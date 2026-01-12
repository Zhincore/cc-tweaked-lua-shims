---@meta

---@class Monitor : table
---Monitor peripheral for displaying text and graphics
local Monitor = {}

--- Write text at the current cursor position.
---@param text string The text to write
function Monitor.write(text) end

--- Set the cursor position.
---@param x number The x coordinate (1-based)
---@param y number The y coordinate (1-based)
function Monitor.setCursorPos(x, y) end

--- Get the cursor position.
---@return number x The x coordinate
---@return number y The y coordinate
function Monitor.getCursorPos() end

--- Get the size of the monitor.
---@return number width The width in characters
---@return number height The height in characters
function Monitor.getSize() end

--- Clear the monitor.
function Monitor.clear() end

--- Clear the current line.
function Monitor.clearLine() end

--- Scroll the monitor content.
---@param lines number Number of lines to scroll (negative for up, positive for down)
function Monitor.scroll(lines) end

--- Set the text color.
---@param color number The color to set
function Monitor.setTextColor(color) end

--- Set the text colour (British spelling).
---@param colour number The colour to set
function Monitor.setTextColour(colour) end

--- Get the text color.
---@return number color The current text color
function Monitor.getTextColor() end

--- Get the text colour (British spelling).
---@return number colour The current text colour
function Monitor.getTextColour() end

--- Set the background color.
---@param color number The color to set
function Monitor.setBackgroundColor(color) end

--- Set the background colour (British spelling).
---@param colour number The colour to set
function Monitor.setBackgroundColour(colour) end

--- Get the background color.
---@return number color The current background color
function Monitor.getBackgroundColor() end

--- Get the background colour (British spelling).
---@return number colour The current background colour
function Monitor.getBackgroundColour() end

--- Check if the monitor is color.
---@return boolean isColor True if the monitor supports color
function Monitor.isColor() end

--- Check if the monitor is colour (British spelling).
---@return boolean isColour True if the monitor supports colour
function Monitor.isColour() end

--- Get the text scale.
---@return number scale The current text scale
function Monitor.getTextScale() end

--- Set the text scale.
---@param scale number The scale to set (0.5 to 5)
function Monitor.setTextScale(scale) end

--- Set cursor blink.
---@param blink boolean Whether the cursor should blink
function Monitor.setCursorBlink(blink) end

--- Get cursor blink.
---@return boolean blink Whether the cursor is blinking
function Monitor.getCursorBlink() end

--- Blit text with individual character colors.
---@param text string The text to write
---@param textColors string The text colors (one character per text character)
---@param backgroundColors string The background colors (one character per text character)
function Monitor.blit(text, textColors, backgroundColors) end

--- Set palette color.
---@param color number The color index
---@param r number Red component (0-1)
---@param g number Green component (0-1)
---@param b number Blue component (0-1)
function Monitor.setPaletteColor(color, r, g, b) end

--- Set palette colour (British spelling).
---@param colour number The colour index
---@param r number Red component (0-1)
---@param g number Green component (0-1)
---@param b number Blue component (0-1)
function Monitor.setPaletteColour(colour, r, g, b) end

--- Get palette color.
---@param color number The color index
---@return number r Red component (0-1)
---@return number g Green component (0-1)
---@return number b Blue component (0-1)
function Monitor.getPaletteColor(color) end

--- Get palette colour (British spelling).
---@param colour number The colour index
---@return number r Red component (0-1)
---@return number g Green component (0-1)
---@return number b Blue component (0-1)
function Monitor.getPaletteColour(colour) end


---@class Modem : table
---Modem peripheral for network communication
local Modem = {}

--- Open a channel for receiving messages.
---@param channel number The channel to open (0-65535)
function Modem.open(channel) end

--- Close a channel.
---@param channel number The channel to close
function Modem.close(channel) end

--- Close all channels.
function Modem.closeAll() end

--- Check if a channel is open.
---@param channel number The channel to check
---@return boolean isOpen True if the channel is open
function Modem.isOpen(channel) end

--- Transmit a message.
---@param channel number The channel to transmit on
---@param replyChannel number The channel for replies
---@param message any The message to send
function Modem.transmit(channel, replyChannel, message) end

--- Check if this is a wireless modem.
---@return boolean isWireless True if this is a wireless modem
function Modem.isWireless() end

--- Get the names of all peripherals connected via wired modem.
---@return string[] peripherals List of peripheral names
function Modem.getNamesRemote() end

--- Check if a peripheral is connected via wired modem.
---@param name string The peripheral name
---@return boolean isPresent True if the peripheral is present
function Modem.isPresentRemote(name) end

--- Get the type of a remote peripheral.
---@param name string The peripheral name
---@return string? type The peripheral type, or nil if not present
function Modem.getTypeRemote(name) end

--- Check if a remote peripheral has a specific type.
---@param name string The peripheral name
---@param type string The type to check
---@return boolean hasType True if the peripheral has this type
function Modem.hasTypeRemote(name, type) end

--- Get the methods of a remote peripheral.
---@param name string The peripheral name
---@return string[]? methods List of method names, or nil if not present
function Modem.getMethodsRemote(name) end

--- Call a method on a remote peripheral.
---@param remoteName string The peripheral name
---@param method string The method to call
---@param ... any Arguments to pass to the method
---@return ... any Return values from the method
function Modem.callRemote(remoteName, method, ...) end


---@class Speaker : table
---Speaker peripheral for playing sounds
local Speaker = {}

--- Play a sound.
---@param name string The sound name
---@param volume? number The volume (0-3, default 1)
---@param pitch? number The pitch (0.5-2, default 1)
---@return boolean success True if the sound was played
function Speaker.playSound(name, volume, pitch) end

--- Play a note.
---@param instrument string The instrument name
---@param volume? number The volume (0-3, default 1)
---@param pitch? number The pitch (0-24, default 12)
---@return boolean success True if the note was played
function Speaker.playNote(instrument, volume, pitch) end

--- Play audio data.
---@param audio table|string Audio data
---@param volume? number The volume (0-3, default 1)
---@return boolean success True if the audio started playing
function Speaker.playAudio(audio, volume) end

--- Stop all sounds.
function Speaker.stop() end


---@class Printer : table
---Printer peripheral for printing documents
local Printer = {}

--- Start a new page.
---@return boolean success True if a new page was started
function Printer.newPage() end

--- End the current page.
---@return boolean success True if the page was printed
function Printer.endPage() end

--- Write text at the current cursor position.
---@param text string The text to write
function Printer.write(text) end

--- Set the cursor position.
---@param x number The x coordinate (1-based)
---@param y number The y coordinate (1-based)
function Printer.setCursorPos(x, y) end

--- Get the cursor position.
---@return number x The x coordinate
---@return number y The y coordinate
function Printer.getCursorPos() end

--- Get the size of the page.
---@return number width The width in characters
---@return number height The height in characters
function Printer.getPageSize() end

--- Set the page title.
---@param title string The title to set
function Printer.setPageTitle(title) end

--- Get the ink level.
---@return number ink The current ink level
function Printer.getInkLevel() end

--- Get the paper level.
---@return number paper The current paper level
function Printer.getPaperLevel() end


---@class Drive : table
---Disk drive peripheral
local Drive = {}

--- Check if a disk is present.
---@return boolean hasDisc True if a disk is present
function Drive.isDiskPresent() end

--- Check if the disk has data.
---@return boolean hasData True if the disk has data
function Drive.hasData() end

--- Get the mount path of the disk.
---@return string? path The mount path, or nil if not mounted
function Drive.getMountPath() end

--- Set the disk label.
---@param label string? The label to set (nil to clear)
function Drive.setDiskLabel(label) end

--- Get the disk label.
---@return string? label The disk label
function Drive.getDiskLabel() end

--- Get the disk ID.
---@return number? id The disk ID
function Drive.getDiskID() end

--- Check if the disk has audio.
---@return boolean hasAudio True if the disk has audio
function Drive.hasAudio() end

--- Get the audio title.
---@return string?|false title The audio title, or false if no audio
function Drive.getAudioTitle() end

--- Play the disk audio.
function Drive.playAudio() end

--- Stop the disk audio.
function Drive.stopAudio() end

--- Eject the disk.
function Drive.ejectDisk() end


---@class Computer : table
---Computer peripheral (for controlling other computers)
local Computer = {}

--- Turn on the computer.
function Computer.turnOn() end

--- Shutdown the computer.
function Computer.shutdown() end

--- Reboot the computer.
function Computer.reboot() end

--- Get the computer ID.
---@return number id The computer ID
function Computer.getID() end

--- Check if the computer is on.
---@return boolean isOn True if the computer is on
function Computer.isOn() end

--- Get the computer label.
---@return string? label The computer label
function Computer.getLabel() end


---@class CommandBlock : table
---Command block peripheral
local CommandBlock = {}

--- Get the command.
---@return string command The current command
function CommandBlock.getCommand() end

--- Set the command.
---@param command string The command to set
function CommandBlock.setCommand(command) end

--- Run the command.
---@return boolean success True if the command ran successfully
function CommandBlock.runCommand() end


---@class Inventory : table
---Generic inventory peripheral (chests, furnaces, etc.)
local Inventory = {}

--- Get the size of the inventory.
---@return number size The number of slots
function Inventory.size() end

--- List all items in the inventory.
---@return table<number, {name: string, count: number, nbt?: string}> items Table of items by slot
function Inventory.list() end

--- Get detailed information about an item.
---@param slot number The slot to check (1-based)
---@return {name: string, count: number, maxCount: number, nbt?: string, displayName?: string, tags?: table<string, boolean>}? item Item details, or nil if empty
function Inventory.getItemDetail(slot) end

--- Get the item limit for a slot.
---@param slot number The slot to check (1-based)
---@return number limit The maximum stack size for this slot
function Inventory.getItemLimit(slot) end

--- Push items to another inventory.
---@param toName string The name of the target inventory
---@param fromSlot number The slot to push from (1-based)
---@param limit? number The maximum number of items to push
---@param toSlot? number The slot to push to (1-based)
---@return number count The number of items pushed
function Inventory.pushItems(toName, fromSlot, limit, toSlot) end

--- Pull items from another inventory.
---@param fromName string The name of the source inventory
---@param fromSlot number The slot to pull from (1-based)
---@param limit? number The maximum number of items to pull
---@param toSlot? number The slot to pull to (1-based)
---@return number count The number of items pulled
function Inventory.pullItems(fromName, fromSlot, limit, toSlot) end


---@class EnergyStorage : table
---Energy storage peripheral (for RF/FE storage devices)
local EnergyStorage = {}

--- Get the stored energy.
---@return number energy The current energy level
function EnergyStorage.getEnergy() end

--- Get the energy capacity.
---@return number capacity The maximum energy capacity
function EnergyStorage.getEnergyCapacity() end


---@class FluidStorage : table
---Fluid storage peripheral (for tanks)
local FluidStorage = {}

--- Get all tanks.
---@return table<number, {name: string, amount: number}> tanks Table of fluid info by tank
function FluidStorage.tanks() end

--- Push fluid to another tank.
---@param toName string The name of the target tank
---@param limit? number The maximum amount to push
---@param fluidName? string The specific fluid to push
---@return number amount The amount of fluid pushed
function FluidStorage.pushFluid(toName, limit, fluidName) end

--- Pull fluid from another tank.
---@param fromName string The name of the source tank
---@param limit? number The maximum amount to pull
---@param fluidName? string The specific fluid to pull
---@return number amount The amount of fluid pulled
function FluidStorage.pullFluid(fromName, limit, fluidName) end


---@class Workbench : table
---Crafting table peripheral
local Workbench = {}

--- Craft items using a recipe.
---@param quantity? number The number of times to craft (default 1)
---@return boolean success True if crafting succeeded
function Workbench.craft(quantity) end


---@class NeuralInterface : table
---Neural interface peripheral (Advanced Peripherals)
local NeuralInterface = {}

--- Get the owner of the neural interface.
---@return string owner The owner's username
function NeuralInterface.getOwner() end

--- Get metadata about the player.
---@return table meta Player metadata
function NeuralInterface.getMeta() end

--- Scan for nearby entities.
---@param range number The scan range
---@return table[] entities List of entity information
function NeuralInterface.sense(range) end

--- Get the player's inventory.
---@return table<number, {name: string, count: number, displayName: string}> items Inventory items
function NeuralInterface.getInventory() end

--- Get the player's armor.
---@return table<number, {name: string, count: number, displayName: string}> armor Armor items
function NeuralInterface.getArmor() end

--- Get the player's ender chest.
---@return table<number, {name: string, count: number, displayName: string}> items Ender chest items
function NeuralInterface.getEnderChest() end


---@class ChatBox : table
---Chat box peripheral (Advanced Peripherals)
local ChatBox = {}

--- Send a message to chat.
---@param message string The message to send
---@param prefix? string Optional prefix
---@param brackets? string Optional bracket style
---@param bracketColor? string Optional bracket color
---@param range? number Optional range limit
---@return boolean success True if the message was sent
function ChatBox.sendMessage(message, prefix, brackets, bracketColor, range) end

--- Send a message to a specific player.
---@param message string The message to send
---@param username string The player's username
---@param prefix? string Optional prefix
---@param brackets? string Optional bracket style
---@param bracketColor? string Optional bracket color
---@return boolean success True if the message was sent
function ChatBox.sendMessageToPlayer(message, username, prefix, brackets, bracketColor) end

--- Send a formatted message.
---@param json string JSON formatted message
---@param username? string Optional specific player
---@param range? number Optional range limit
---@return boolean success True if the message was sent
function ChatBox.sendFormattedMessage(json, username, range) end
