---@meta

---@class commands
---Command computer specific API for executing Minecraft commands
commands = {}

--- Execute a Minecraft command.
---@param command string The command to execute (without the leading slash)
---@return boolean success True if the command executed successfully
---@return string[] output The output lines from the command
---@return number? affectedEntities The number of entities affected (if applicable)
function commands.exec(command) end

--- Execute a Minecraft command asynchronously.
---@param command string The command to execute (without the leading slash)
---@return number taskID The ID of the task, used to identify the command_complete event
function commands.execAsync(command) end

--- Get the list of available commands.
---@return string[] commands List of available command names
function commands.list() end

--- Get the position of the command computer.
---@return number x The x coordinate
---@return number y The y coordinate
---@return number z The z coordinate
function commands.getBlockPosition() end

--- Get information about a block at the specified position.
---@param x number The x coordinate
---@param y number The y coordinate
---@param z number The z coordinate
---@return {name: string, state: table<string, any>, tags: table<string, boolean>} block Block information
function commands.getBlockInfo(x, y, z) end

--- Get information about blocks in a region.
---@param x1 number The first x coordinate
---@param y1 number The first y coordinate
---@param z1 number The first z coordinate
---@param x2 number The second x coordinate
---@param y2 number The second y coordinate
---@param z2 number The second z coordinate
---@return table<number, {name: string, state: table<string, any>, tags: table<string, boolean>, x: number, y: number, z: number}> blocks List of block information
function commands.getBlockInfos(x1, y1, z1, x2, y2, z2) end
