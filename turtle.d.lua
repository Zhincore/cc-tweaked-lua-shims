---@meta

---@class turtle
---Turtle movement and interaction API
turtle = {}

--- Move the turtle forward one block.
---@return boolean success True if the turtle moved successfully
---@return string? error The error message if the turtle could not move
function turtle.forward() end

--- Move the turtle backward one block.
---@return boolean success True if the turtle moved successfully
---@return string? error The error message if the turtle could not move
function turtle.back() end

--- Move the turtle up one block.
---@return boolean success True if the turtle moved successfully
---@return string? error The error message if the turtle could not move
function turtle.up() end

--- Move the turtle down one block.
---@return boolean success True if the turtle moved successfully
---@return string? error The error message if the turtle could not move
function turtle.down() end

--- Rotate the turtle 90 degrees to the left.
---@return boolean success Always returns true
function turtle.turnLeft() end

--- Rotate the turtle 90 degrees to the right.
---@return boolean success Always returns true
function turtle.turnRight() end

--- Dig the block in front of the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if a block was broken
---@return string? error The error message if the turtle could not dig
function turtle.dig(side) end

--- Dig the block above the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if a block was broken
---@return string? error The error message if the turtle could not dig
function turtle.digUp(side) end

--- Dig the block below the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if a block was broken
---@return string? error The error message if the turtle could not dig
function turtle.digDown(side) end

--- Place a block in front of the turtle.
---@param text? string The text to place on the block (for signs)
---@return boolean success True if a block was placed
---@return string? error The error message if the turtle could not place
function turtle.place(text) end

--- Place a block above the turtle.
---@param text? string The text to place on the block (for signs)
---@return boolean success True if a block was placed
---@return string? error The error message if the turtle could not place
function turtle.placeUp(text) end

--- Place a block below the turtle.
---@param text? string The text to place on the block (for signs)
---@return boolean success True if a block was placed
---@return string? error The error message if the turtle could not place
function turtle.placeDown(text) end

--- Detect if there is a block in front of the turtle.
---@return boolean hasBlock True if there is a block
function turtle.detect() end

--- Detect if there is a block above the turtle.
---@return boolean hasBlock True if there is a block
function turtle.detectUp() end

--- Detect if there is a block below the turtle.
---@return boolean hasBlock True if there is a block
function turtle.detectDown() end

--- Compare the block in front of the turtle to the selected slot.
---@return boolean matches True if the blocks match
function turtle.compare() end

--- Compare the block above the turtle to the selected slot.
---@return boolean matches True if the blocks match
function turtle.compareUp() end

--- Compare the block below the turtle to the selected slot.
---@return boolean matches True if the blocks match
function turtle.compareDown() end

--- Attack in front of the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if an entity was attacked
---@return string? error The error message if the turtle could not attack
function turtle.attack(side) end

--- Attack above the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if an entity was attacked
---@return string? error The error message if the turtle could not attack
function turtle.attackUp(side) end

--- Attack below the turtle.
---@param side? string The tool to use (left/right for tool upgrades)
---@return boolean success True if an entity was attacked
---@return string? error The error message if the turtle could not attack
function turtle.attackDown(side) end

--- Suck items from the inventory in front of the turtle.
---@param count? number The maximum number of items to suck
---@return boolean success True if items were picked up
---@return string? error The error message if the turtle could not suck
function turtle.suck(count) end

--- Suck items from the inventory above the turtle.
---@param count? number The maximum number of items to suck
---@return boolean success True if items were picked up
---@return string? error The error message if the turtle could not suck
function turtle.suckUp(count) end

--- Suck items from the inventory below the turtle.
---@param count? number The maximum number of items to suck
---@return boolean success True if items were picked up
---@return string? error The error message if the turtle could not suck
function turtle.suckDown(count) end

--- Get the currently selected slot.
---@return number slot The currently selected slot (1-16)
function turtle.getSelectedSlot() end

--- Get the fuel level of the turtle.
---@return number|"unlimited" fuel The current fuel level, or "unlimited"
function turtle.getFuelLevel() end

--- Get the maximum amount of fuel this turtle can hold.
---@return number|"unlimited" maxFuel The maximum fuel level, or "unlimited"
function turtle.getFuelLimit() end

--- Refuel the turtle using the currently selected slot.
---@param count? number The maximum number of items to consume
---@return boolean success True if the turtle was refueled
---@return string? error The error message if the turtle could not refuel
function turtle.refuel(count) end

--- Compare the currently selected slot to another slot.
---@param slot number The slot to compare to (1-16)
---@return boolean matches True if the slots contain the same item
function turtle.compareTo(slot) end

--- Transfer items to another slot.
---@param slot number The slot to transfer to (1-16)
---@param count? number The maximum number of items to transfer
---@return boolean success True if items were transferred
function turtle.transferTo(slot, count) end

--- Select a slot.
---@param slot number The slot to select (1-16)
---@return boolean success True if the slot was selected
function turtle.select(slot) end

--- Get the number of items in a slot.
---@param slot? number The slot to check (defaults to selected slot)
---@return number count The number of items in the slot
function turtle.getItemCount(slot) end

--- Get the remaining space in a slot.
---@param slot? number The slot to check (defaults to selected slot)
---@return number space The remaining space in the slot
function turtle.getItemSpace(slot) end

--- Get detailed information about an item in a slot.
---@param slot? number The slot to check (defaults to selected slot)
---@param detailed? boolean Whether to include durability and other details
---@return table? item The item information, or nil if the slot is empty
function turtle.getItemDetail(slot, detailed) end

--- Equip an item from the currently selected slot to the left side.
---@return boolean success True if the item was equipped
---@return string? error The error message if the item could not be equipped
function turtle.equipLeft() end

--- Equip an item from the currently selected slot to the right side.
---@return boolean success True if the item was equipped
---@return string? error The error message if the item could not be equipped
function turtle.equipRight() end

--- Inspect the block in front of the turtle.
---@return boolean success True if there is a block
---@return table|string block The block information, or an error message
function turtle.inspect() end

--- Inspect the block above the turtle.
---@return boolean success True if there is a block
---@return table|string block The block information, or an error message
function turtle.inspectUp() end

--- Inspect the block below the turtle.
---@return boolean success True if there is a block
---@return table|string block The block information, or an error message
function turtle.inspectDown() end

--- Drop items from the currently selected slot into the inventory in front.
---@param count? number The maximum number of items to drop
---@return boolean success True if items were dropped
---@return string? error The error message if the turtle could not drop
function turtle.drop(count) end

--- Drop items from the currently selected slot into the inventory above.
---@param count? number The maximum number of items to drop
---@return boolean success True if items were dropped
---@return string? error The error message if the turtle could not drop
function turtle.dropUp(count) end

--- Drop items from the currently selected slot into the inventory below.
---@param count? number The maximum number of items to drop
---@return boolean success True if items were dropped
---@return string? error The error message if the turtle could not drop
function turtle.dropDown(count) end

--- Craft items if the turtle has a crafting table upgrade.
---@param limit? number The maximum number of crafts to perform
---@return boolean success True if items were crafted
---@return string? error The error message if crafting failed
function turtle.craft(limit) end

---@class turtle.native
---Native turtle functions (lower level)
turtle.native = {}

--- Native forward movement.
---@return boolean success
---@return string? error
function turtle.native.forward() end

--- Native backward movement.
---@return boolean success
---@return string? error
function turtle.native.back() end

--- Native upward movement.
---@return boolean success
---@return string? error
function turtle.native.up() end

--- Native downward movement.
---@return boolean success
---@return string? error
function turtle.native.down() end

--- Native left turn.
---@return boolean success
function turtle.native.turnLeft() end

--- Native right turn.
---@return boolean success
function turtle.native.turnRight() end

--- Native select.
---@param slot number
---@return boolean success
function turtle.native.select(slot) end

--- Native dig.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.dig(side) end

--- Native dig up.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.digUp(side) end

--- Native dig down.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.digDown(side) end

--- Native place.
---@param signText? string
---@return boolean success
---@return string? error
function turtle.native.place(signText) end

--- Native place up.
---@param signText? string
---@return boolean success
---@return string? error
function turtle.native.placeUp(signText) end

--- Native place down.
---@param signText? string
---@return boolean success
---@return string? error
function turtle.native.placeDown(signText) end

--- Native drop.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.drop(count) end

--- Native drop up.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.dropUp(count) end

--- Native drop down.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.dropDown(count) end

--- Native suck.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.suck(count) end

--- Native suck up.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.suckUp(count) end

--- Native suck down.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.suckDown(count) end

--- Native refuel.
---@param count? number
---@return boolean success
---@return string? error
function turtle.native.refuel(count) end

--- Native compare.
---@return boolean matches
function turtle.native.compare() end

--- Native compare up.
---@return boolean matches
function turtle.native.compareUp() end

--- Native compare down.
---@return boolean matches
function turtle.native.compareDown() end

--- Native compare to slot.
---@param slot number
---@return boolean matches
function turtle.native.compareTo(slot) end

--- Native attack.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.attack(side) end

--- Native attack up.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.attackUp(side) end

--- Native attack down.
---@param side? string
---@return boolean success
---@return string? error
function turtle.native.attackDown(side) end

--- Native detect.
---@return boolean hasBlock
function turtle.native.detect() end

--- Native detect up.
---@return boolean hasBlock
function turtle.native.detectUp() end

--- Native detect down.
---@return boolean hasBlock
function turtle.native.detectDown() end

--- Native inspect.
---@return boolean success
---@return table|string block
function turtle.native.inspect() end

--- Native inspect up.
---@return boolean success
---@return table|string block
function turtle.native.inspectUp() end

--- Native inspect down.
---@return boolean success
---@return table|string block
function turtle.native.inspectDown() end

--- Native equip left.
---@return boolean success
---@return string? error
function turtle.native.equipLeft() end

--- Native equip right.
---@return boolean success
---@return string? error
function turtle.native.equipRight() end

--- Native get fuel level.
---@return number|"unlimited" fuel
function turtle.native.getFuelLevel() end

--- Native get fuel limit.
---@return number|"unlimited" maxFuel
function turtle.native.getFuelLimit() end

--- Native transfer to.
---@param slot number
---@param count? number
---@return boolean success
function turtle.native.transferTo(slot, count) end

--- Native get selected slot.
---@return number slot
function turtle.native.getSelectedSlot() end

--- Native get item count.
---@param slot? number
---@return number count
function turtle.native.getItemCount(slot) end

--- Native get item space.
---@param slot? number
---@return number space
function turtle.native.getItemSpace(slot) end

--- Native get item detail.
---@param slot? number
---@param detailed? boolean
---@return table? item
function turtle.native.getItemDetail(slot, detailed) end
