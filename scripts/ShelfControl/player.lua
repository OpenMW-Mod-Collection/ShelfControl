---@diagnostic disable: param-type-mismatch
local self = require("openmw.self")
local core = require("openmw.core")

local selfControls = self.controls
local lastSneakStatus = not selfControls.sneak

local function onUpdate()
    if lastSneakStatus ~= selfControls.sneak then
        lastSneakStatus = not lastSneakStatus
        core.sendGlobalEvent("ShelfControl_sneakStatusChanged", selfControls.sneak)
    end
end

return {
    engineHandlers = {
        onUpdate = onUpdate,
    }
}
