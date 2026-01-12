---@meta

---@class pocket
---Pocket computer specific API
pocket = {}

--- Equip an item from the selected slot to the pocket computer upgrade slot.
---@return boolean success True if an item was equipped
---@return string? error Error message if equipping failed
function pocket.equipBack() end

--- Unequip the current pocket computer upgrade.
---@return boolean success True if the upgrade was unequipped
---@return string? error Error message if unequipping failed
function pocket.unequipBack() end

--- Get the fuel level of the pocket computer.
---@return number|"unlimited" fuel The current fuel level, or "unlimited"
function pocket.getFuelLevel() end

--- Get the maximum fuel capacity of the pocket computer.
---@return number|"unlimited" maxFuel The maximum fuel capacity, or "unlimited"
function pocket.getFuelLimit() end

--- Refuel the pocket computer using the selected slot.
---@param count? number The maximum number of items to consume
---@return boolean success True if the pocket computer was refueled
---@return string? error Error message if refueling failed
function pocket.refuel(count) end
