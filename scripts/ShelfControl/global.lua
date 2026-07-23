local storage = require("openmw.storage")
local I = require("openmw.interfaces")
local types = require("openmw.types")

local Owner = require("scripts.ShelfControl.model.owner")
require("scripts.ShelfControl.checkers.books")
require("scripts.ShelfControl.checkers.cells")
require("scripts.ShelfControl.utils.openmw_utils")
require("scripts.ShelfControl.messages.messageManager")

local sectionBuyable = storage.globalSection("SSettingshelfControl_buyable")
local sectionOwned = storage.globalSection("SettingsShelfControl_owned")
local sectionMisc = storage.globalSection("SettingsShelfControl_misc")
local sneaking = false

local function bookIsOwned(section, ownershipChecker, ctx)
    return section:get("supress")
        and ownershipChecker(ctx)
        and section:get("minDisposition") > ctx.owner.disposition
        and not (sectionMisc:get("enableCellWhitelist") and LocationIsWhitelisted(ctx))
end

-- true = allow activation, false = block activation
---@param book GameObject
---@param actor GameObject
---@return boolean
local function onBookActivation(book, actor)
    if not sectionMisc:get("modEnabled") then return true end
    -- if not player
    if not types.Player.objectIsInstance(actor) then return true end
    -- if book has an mwscript attached
    local bookRecord = GetRecord(book)
    if (sectionMisc:get("ignoreBooksWithMWScripts") and bookRecord.mwscript)
        and not (sectionMisc:get("spellbooksAreNormalBooks") and IsSpellbook(book.recordId))
    then
        return true
    end
    -- if book is a scroll
    if sectionMisc:get("ignoreScrolls") and bookRecord.isScroll then return true end

    local ctx = {
        book = book,
        owner = Owner.new(book, actor),
        player = actor,
    }

    -- check buyable and owned conditions
    if bookIsOwned(sectionBuyable, IsBuyable, ctx)
        or bookIsOwned(sectionOwned, IsNpcOwned, ctx)
        or bookIsOwned(sectionOwned, IsFactionOwned, ctx)
    then
        -- reading during sneaking is free
        if sneaking then
            -- crime check :D
            if sectionMisc:get("sneakyReadingIsACrime") then
                I.Crimes.commitCrime(actor, {
                    victim = ctx.owner.self,
                    faction = ctx.owner.factionId,
                    type = types.Player.OFFENSE_TYPE.Theft,
                    arg = book.type.records[book.recordId].value * book.count
                })
            end
            return true
        else
            ShowMessage(ctx)
            return false
        end
    end

    return true
end

I.Activation.addHandlerForType(types.Book, onBookActivation)

return {
    eventHandlers = {
        ShelfControl_sneakStatusChanged = function(sneakStatus)
            sneaking = sneakStatus
        end
    }
}
