---@meta

---@class cc.audio.dfpwm
---Convert between streams of DFPWM audio data and a list of amplitudes
local dfpwm = {}

--- Create a new DFPWM decoder.
---@return table decoder A DFPWM decoder object
function dfpwm.make_decoder() end

--- Create a new DFPWM encoder.
---@return table encoder A DFPWM encoder object
function dfpwm.make_encoder() end

---@class cc.completion
---Helper methods for working with input completion
local completion = {}

--- Complete a choice from a list of possible values.
---@param text string The input text to complete
---@param choices string[] The list of possible choices
---@param add_space? boolean Whether to add a space after the completion
---@return string[] completions A list of possible completions
function completion.choice(text, choices, add_space) end

--- Complete a period-separated path.
---@param text string The input text to complete
---@param choices string[] The list of possible choices
---@param add_space? boolean Whether to add a space after the completion
---@return string[] completions A list of possible completions
function completion.peripheral(text, choices, add_space) end

--- Complete a Minecraft command.
---@param text string The input text to complete
---@return string[] completions A list of possible completions
function completion.command(text) end

---@class cc.expect
---Helper functions for verifying function arguments
local expect = {}

--- Expect a value to be of a specific type.
---@param index number The argument index (for error messages)
---@param value any The value to check
---@param ... string The expected type names
---@return any value The input value (for chaining)
function expect.expect(index, value, ...) end

--- Expect a table field to be of a specific type.
---@param tbl table The table to check
---@param field string The field name
---@param ... string The expected type names
---@return any value The field value (for chaining)
function expect.field(tbl, field, ...) end

--- Expect a value to be within a numeric range.
---@param num number The number to check
---@param min? number The minimum value (inclusive)
---@param max? number The maximum value (inclusive)
---@return number num The input number (for chaining)
function expect.range(num, min, max) end

---@class cc.image.nft
---Read and draw nft (Nitrogen Fingers Text) images
local nft = {}

--- Load an NFT image from a file.
---@param path string The path to the NFT file
---@return table? image The loaded image, or nil on error
function nft.load(path) end

--- Draw an NFT image to the screen.
---@param image table The image to draw
---@param x number The x coordinate to draw at
---@param y number The y coordinate to draw at
---@param target? table The terminal to draw to (defaults to current term)
function nft.draw(image, x, y, target) end

--- Parse an NFT image from a string.
---@param str string The NFT image data
---@return table image The parsed image
function nft.parse(str) end

---@class cc.pretty
---Pretty printer for rendering data structures
local pretty = {}

--- Pretty print a value.
---@param value any The value to pretty print
---@param options? {function_args?: boolean, function_source?: boolean} Pretty print options
---@return table doc A document object
function pretty.pretty(value, options) end

--- Render a document to a string.
---@param doc table The document to render
---@param width? number The maximum width (defaults to terminal width)
---@return string output The rendered string
function pretty.render(doc, width) end

--- Pretty print and render a value to a string.
---@param value any The value to pretty print
---@param width? number The maximum width
---@param options? {function_args?: boolean, function_source?: boolean} Pretty print options
---@return string output The rendered string
function pretty.pretty_print(value, width, options) end

--- Write a pretty-printed value to the terminal.
---@param value any The value to print
---@param options? {function_args?: boolean, function_source?: boolean} Pretty print options
function pretty.print(value, options) end

--- Create a text document.
---@param text string The text content
---@param color? number The text color
---@return table doc A document object
function pretty.text(text, color) end

--- Concatenate multiple documents.
---@param ... table Documents to concatenate
---@return table doc A concatenated document
function pretty.concat(...) end

--- Create an empty document.
---@return table doc An empty document
function pretty.empty() end

--- Create a document with a line break.
---@param text? string Optional text before the break
---@return table doc A document with a line break
function pretty.space_line(text) end

---@class cc.require
---Pure Lua implementation of require and package library
local require_module = {}

--- Require a module.
---@param modname string The module name
---@return any module The loaded module
function require_module.require(modname) end

--- Make a require function with a custom environment.
---@param env table The environment table
---@param dir string The directory to search from
---@return function require A custom require function
function require_module.make(env, dir) end

---@class cc.shell.completion
---Shell completion helpers
local shell_completion = {}

--- Complete a program name.
---@param shell table The shell to complete in
---@param text string The text to complete
---@return string[] completions Possible program names
function shell_completion.program(shell, text) end

--- Complete a directory path.
---@param shell table The shell to complete in
---@param text string The text to complete
---@return string[] completions Possible directory paths
function shell_completion.dir(shell, text) end

--- Complete a file path.
---@param shell table The shell to complete in
---@param text string The text to complete
---@return string[] completions Possible file paths
function shell_completion.file(shell, text) end

--- Build a completion function for a program.
---@param ... table|string Completion arguments (can be strings, tables of choices, or functions)
---@return function complete A completion function
function shell_completion.build(...) end

---@class cc.strings
---Utilities for working with strings and text
local strings = {}

--- Wrap text to a given width.
---@param text string The text to wrap
---@param width? number The width to wrap to (defaults to terminal width)
---@return string[] lines The wrapped lines
function strings.wrap(text, width) end

--- Ensure a string ends with a line feed.
---@param text string The text to check
---@return string text The text with a trailing line feed
function strings.ensure_line_ending(text) end

---Global require function (provided by cc.require)
---@param modname string The module name to require
---@return any module The loaded module
function require(modname) end

---Package library (provided by cc.require)
---@class package
---@field path string The module search path
---@field loaded table<string, any> Table of loaded modules
---@field preload table<string, function> Table of module loaders
---@field loaders function[] List of loader functions
---@field config string Package configuration string
package = {}
