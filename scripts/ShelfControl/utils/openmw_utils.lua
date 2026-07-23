local world = require("openmw.world")
local types = require("openmw.types")

require("scripts.ShelfControl.utils.consts")

function GetActiveActorByRecordId(recordId)
    for _, activeActor in ipairs(world.activeActors) do
        if activeActor.recordId == recordId then
            return activeActor
        end
    end
end

---@param cell Cell
---@param factionId string
function AnyActiveFactionMembersInCell(cell, factionId)
    for _, npc in ipairs(cell:getAll(types.NPC)) do
        if npc.type.getFactionRank(npc, factionId) > 0 and not npc.type.isDead(npc) then
            return true
        end
    end
    return false
end

function GetRecord(obj)
    return obj.type.records[obj.recordId]
end

function IsSpellbook(recordId)
    return Spellbooks[recordId]
    -- support for The Spell Tomes - Magic Books of Morrowind to Study and Cast to
    -- https://www.nexusmods.com/morrowind/mods/57432
        or string.find(recordId, "^spelltome_")
end
