---@meta

---@class cc
---Computer and turtle control APIs
cc = {}

---@class os
---Operating system functions
---@field pullEvent fun(filter?: string): string, ...
---@field pullEventRaw fun(filter?: string): string, ...
---@field queueEvent fun(event: string, ...): nil
---@field startTimer fun(timeout: number): number
---@field cancelTimer fun(timer: number): nil
---@field setAlarm fun(time: number): number
---@field cancelAlarm fun(alarm: number): nil
---@field shutdown fun(): nil
---@field reboot fun(): nil
---@field getComputerID fun(): number
---@field computerID fun(): number
---@field getComputerLabel fun(): string?
---@field computerLabel fun(): string?
---@field setComputerLabel fun(label?: string): nil
---@field clock fun(): number
---@field time fun(locale?: string): number
---@field day fun(locale?: string): number
---@field epoch fun(locale?: string): number
---@field date fun(format?: string, time?: number): string|table
---@field run fun(env: table, path: string, ...): boolean
---@field sleep fun(time: number): nil
os = {}

---@class term
---Terminal manipulation functions
---@field write fun(text: string): nil
---@field clear fun(): nil
---@field clearLine fun(): nil
---@field getCursorPos fun(): number, number
---@field setCursorPos fun(x: number, y: number): nil
---@field getCursorBlink fun(): boolean
---@field setCursorBlink fun(blink: boolean): nil
---@field isColor fun(): boolean
---@field isColour fun(): boolean
---@field getSize fun(): number, number
---@field scroll fun(lines: number): nil
---@field setTextColor fun(color: number): nil
---@field setTextColour fun(colour: number): nil
---@field getTextColor fun(): number
---@field getTextColour fun(): number
---@field setBackgroundColor fun(color: number): nil
---@field setBackgroundColour fun(colour: number): nil
---@field getBackgroundColor fun(): number
---@field getBackgroundColour fun(): number
---@field blit fun(text: string, textColors: string, backgroundColors: string): nil
---@field setPaletteColor fun(color: number, r: number, g: number, b: number): nil
---@field setPaletteColour fun(colour: number, r: number, g: number, b: number): nil
---@field getPaletteColor fun(color: number): number, number, number
---@field getPaletteColour fun(colour: number): number, number, number
---@field nativePaletteColor fun(color: number): number, number, number
---@field nativePaletteColour fun(colour: number): number, number, number
---@field redirect fun(target: table): table
---@field current fun(): table
---@field native fun(): table
term = {}

---@class colors
---Color constants and functions
---@field white number
---@field orange number
---@field magenta number
---@field lightBlue number
---@field yellow number
---@field lime number
---@field pink number
---@field gray number
---@field grey number
---@field lightGray number
---@field lightGrey number
---@field cyan number
---@field purple number
---@field blue number
---@field brown number
---@field green number
---@field red number
---@field black number
---@field combine fun(...: number): number
---@field subtract fun(colors: number, ...: number): number
---@field test fun(colors: number, color: number): boolean
---@field packRGB fun(r: number, g: number, b: number): number
---@field unpackRGB fun(rgb: number): number, number, number
---@field rgb8 fun(r: number, g: number, b: number): number
---@field toBlit fun(color: number): string
---@field fromBlit fun(hex: string): number?
colors = {}

---@alias colours colors
colours = colors

---@class fs
---File system functions
---@field list fun(path: string): string[]
---@field combine fun(path: string, ...: string): string
---@field getName fun(path: string): string
---@field getSize fun(path: string): number
---@field exists fun(path: string): boolean
---@field isDir fun(path: string): boolean
---@field isReadOnly fun(path: string): boolean
---@field getDrive fun(path: string): string?
---@field makeDir fun(path: string): nil
---@field move fun(from: string, to: string): nil
---@field copy fun(from: string, to: string): nil
---@field delete fun(path: string): nil
---@field open fun(path: string, mode: "r"|"w"|"a"|"rb"|"wb"|"ab"): ReadHandle|WriteHandle|BinaryReadHandle|BinaryWriteHandle|nil
---@field find fun(pattern: string): string[]
---@field getDir fun(path: string): string
---@field complete fun(path: string, location: string, includeFiles?: boolean, includeDirs?: boolean): string[]
---@field isDriveRoot fun(path: string): boolean
---@field getCapacity fun(path: string): number?
---@field getFreeSpace fun(path: string): number?
---@field attributes fun(path: string): {size: number, isDir: boolean, isReadOnly: boolean, created: number, modified: number}
fs = {}

---@class ReadHandle
---@field readLine fun(withTrailing?: boolean): string?
---@field readAll fun(): string?
---@field read fun(count?: number): string?
---@field close fun(): nil

---@class WriteHandle
---@field write fun(text: string): nil
---@field writeLine fun(text: string): nil
---@field flush fun(): nil
---@field close fun(): nil

---@class BinaryReadHandle
---@field read fun(count?: number): number?
---@field readLine fun(withTrailing?: boolean): string?
---@field readAll fun(): string?
---@field close fun(): nil
---@field seek fun(whence?: "set"|"cur"|"end", offset?: number): number?

---@class BinaryWriteHandle
---@field write fun(byte: number|string): nil
---@field flush fun(): nil
---@field close fun(): nil
---@field seek fun(whence?: "set"|"cur"|"end", offset?: number): number?

---@class io
---Lua standard I/O library (emulated)
---@field stdin ReadHandle
---@field stdout WriteHandle
---@field stderr WriteHandle
---@field input fun(file?: string|ReadHandle): ReadHandle
---@field output fun(file?: string|WriteHandle): WriteHandle
---@field lines fun(filename?: string, ...: string): fun(): string?
---@field open fun(filename: string, mode?: string): ReadHandle|WriteHandle|nil, string?
---@field close fun(file?: ReadHandle|WriteHandle): boolean, string?
---@field flush fun(): nil
---@field type fun(obj: any): "file"|"closed file"|nil
---@field write fun(...: string): nil
---@field read fun(...: string|number): string?
io = {}

---@class peripheral
---Peripheral access functions
---@field getNames fun(): string[]
---@field isPresent fun(name: string): boolean
---@field getType fun(peripheral: string|table): string?
---@field hasType fun(peripheral: string|table, type: string): boolean?
---@field getMethods fun(name: string): string[]?
---@field getName fun(peripheral: table): string
---@field call fun(name: string, method: string, ...): ...
---@field wrap fun(name: string): table?
---@field find fun(type: string, filter?: fun(name: string, wrapped: table): boolean): ...
peripheral = {}

---@class redstone
---Redstone control functions
---@field getSides fun(): string[]
---@field getInput fun(side: string): boolean
---@field setOutput fun(side: string, on: boolean): nil
---@field getOutput fun(side: string): boolean
---@field getAnalogInput fun(side: string): number
---@field setAnalogOutput fun(side: string, value: number): nil
---@field getAnalogOutput fun(side: string): number
---@field getBundledInput fun(side: string): number
---@field setBundledOutput fun(side: string, colors: number): nil
---@field getBundledOutput fun(side: string): number
---@field testBundledInput fun(side: string, color: number): boolean
redstone = {}

---@alias rs redstone
rs = redstone

---@class rednet
---Network communication functions
---@field CHANNEL_BROADCAST number
---@field CHANNEL_REPEAT number
---@field MAX_ID_CHANNELS number
---@field open fun(modem: string): nil
---@field close fun(modem?: string): nil
---@field isOpen fun(modem?: string): boolean
---@field send fun(recipient: number, message: any, protocol?: string): boolean
---@field broadcast fun(message: any, protocol?: string): nil
---@field receive fun(protocolFilter?: string, timeout?: number): number?, any, string?
---@field host fun(protocol: string, hostname: string): nil
---@field unhost fun(protocol: string): nil
---@field lookup fun(protocol: string, hostname?: string): ...
---@field run fun(): nil
rednet = {}

---@class http
---HTTP request functions
---@field request fun(url: string, body?: string, headers?: table<string,string>, binary?: boolean): nil
---@field get fun(url: string, headers?: table<string,string>, binary?: boolean): Response?
---@field post fun(url: string, body: string, headers?: table<string,string>, binary?: boolean): Response?
---@field checkURL fun(url: string): boolean
---@field checkURLAsync fun(url: string): nil
---@field websocket fun(url: string, headers?: table<string,string>): Websocket?
---@field websocketAsync fun(url: string, headers?: table<string,string>): nil
http = {}

---@class Response
---@field readAll fun(): string?
---@field readLine fun(withTrailing?: boolean): string?
---@field read fun(count?: number): string|number?
---@field close fun(): nil
---@field getResponseCode fun(): number
---@field getResponseHeaders fun(): table<string,string>

---@class Websocket
---@field receive fun(timeout?: number): string?
---@field send fun(message: string, binary?: boolean): nil
---@field close fun(): nil

---@class textutils
---Text manipulation utilities
---@field slowWrite fun(text: string, rate?: number): nil
---@field slowPrint fun(text: string, rate?: number): nil
---@field formatTime fun(time: number, twentyFourHour?: boolean): string
---@field pagedPrint fun(text: string, freeLines?: number): number
---@field tabulate fun(...: table): nil
---@field pagedTabulate fun(...: table): nil
---@field empty_json_array table
---@field json_null table
---@field serialize fun(value: any, options?: {compact?: boolean, allow_repetitions?: boolean}): string
---@field serialise fun(value: any, options?: {compact?: boolean, allow_repetitions?: boolean}): string
---@field unserialize fun(str: string): any
---@field unserialise fun(str: string): any
---@field serializeJSON fun(value: any, options?: {compact?: boolean, unicode_strings?: boolean, allow_repetitions?: boolean}): string
---@field serialiseJSON fun(value: any, options?: {compact?: boolean, unicode_strings?: boolean, allow_repetitions?: boolean}): string
---@field unserializeJSON fun(str: string, options?: {nbt_style?: boolean, parse_null?: boolean, parse_empty_array?: boolean}): any
---@field unserialiseJSON fun(str: string, options?: {nbt_style?: boolean, parse_null?: boolean, parse_empty_array?: boolean}): any
---@field urlEncode fun(str: string): string
---@field urlDecode fun(str: string): string
---@field complete fun(partial: string, possible?: string[]): string[]
textutils = {}

---@class settings
---Persistent settings storage
---@field set fun(name: string, value: any): nil
---@field get fun(name: string, default?: any): any
---@field getDetails fun(name: string): {description?: string, default?: any, type?: string, value?: any}?
---@field unset fun(name: string): nil
---@field clear fun(): nil
---@field getNames fun(): string[]
---@field load fun(path?: string): boolean
---@field save fun(path?: string): boolean
---@field define fun(name: string, options?: {description?: string, default?: any, type?: string}): nil
settings = {}

---@class gps
---GPS location functions
---@field CHANNEL_GPS number
---@field locate fun(timeout?: number, debug?: boolean): number?, number?, number?
gps = {}

---@class help
---Help system functions
---@field path fun(): string
---@field setPath fun(path: string): nil
---@field lookup fun(topic: string): string?
---@field topics fun(): string[]
---@field completeTopic fun(prefix: string): string[]
help = {}

---@class disk
---Disk drive functions
---@field isPresent fun(side: string): boolean
---@field hasData fun(side: string): boolean
---@field getMountPath fun(side: string): string?
---@field setLabel fun(side: string, label?: string): nil
---@field getLabel fun(side: string): string?
---@field getID fun(side: string): number?
---@field hasAudio fun(side: string): boolean
---@field getAudioTitle fun(side: string): string?|false
---@field playAudio fun(side: string): nil
---@field stopAudio fun(side: string): nil
---@field eject fun(side: string): nil
disk = {}

---@class paintutils
---Graphics utilities
---@field parseImage fun(image: string): table
---@field loadImage fun(path: string): table?
---@field drawPixel fun(x: number, y: number, color?: number): nil
---@field drawLine fun(startX: number, startY: number, endX: number, endY: number, color?: number): nil
---@field drawBox fun(startX: number, startY: number, endX: number, endY: number, color?: number): nil
---@field drawFilledBox fun(startX: number, startY: number, endX: number, endY: number, color?: number): nil
---@field drawImage fun(image: table, x: number, y: number): nil
paintutils = {}

---@class parallel
---Parallel execution functions
---@field waitForAny fun(...: function): nil
---@field waitForAll fun(...: function): nil
parallel = {}

---@class vector
---Vector operations
---@field new fun(x: number, y: number, z: number): Vector
vector = {}

---@class Vector
---@field x number
---@field y number
---@field z number
---@field add fun(self: Vector, other: Vector): Vector
---@field sub fun(self: Vector, other: Vector): Vector
---@field mul fun(self: Vector, m: number): Vector
---@field div fun(self: Vector, m: number): Vector
---@field unm fun(self: Vector): Vector
---@field dot fun(self: Vector, other: Vector): number
---@field cross fun(self: Vector, other: Vector): Vector
---@field length fun(self: Vector): number
---@field normalize fun(self: Vector): Vector
---@field normalise fun(self: Vector): Vector
---@field round fun(self: Vector, tolerance?: number): Vector
---@field tostring fun(self: Vector): string
---@field equals fun(self: Vector, other: Vector): boolean

---@class keys
---Keyboard key constants
---@field space number
---@field apostrophe number
---@field comma number
---@field minus number
---@field period number
---@field slash number
---@field zero number
---@field one number
---@field two number
---@field three number
---@field four number
---@field five number
---@field six number
---@field seven number
---@field eight number
---@field nine number
---@field semicolon number
---@field equals number
---@field a number
---@field b number
---@field c number
---@field d number
---@field e number
---@field f number
---@field g number
---@field h number
---@field i number
---@field j number
---@field k number
---@field l number
---@field m number
---@field n number
---@field o number
---@field p number
---@field q number
---@field r number
---@field s number
---@field t number
---@field u number
---@field v number
---@field w number
---@field x number
---@field y number
---@field z number
---@field leftBracket number
---@field backslash number
---@field rightBracket number
---@field grave number
---@field enter number
---@field tab number
---@field backspace number
---@field insert number
---@field delete number
---@field right number
---@field left number
---@field down number
---@field up number
---@field pageUp number
---@field pageDown number
---@field home number
---@field ["end"] number
---@field capsLock number
---@field scrollLock number
---@field numLock number
---@field printScreen number
---@field pause number
---@field f1 number
---@field f2 number
---@field f3 number
---@field f4 number
---@field f5 number
---@field f6 number
---@field f7 number
---@field f8 number
---@field f9 number
---@field f10 number
---@field f11 number
---@field f12 number
---@field leftShift number
---@field leftCtrl number
---@field leftAlt number
---@field leftSuper number
---@field rightShift number
---@field rightCtrl number
---@field rightAlt number
---@field rightSuper number
---@field menu number
---@field numPadDecimal number
---@field numPadDivide number
---@field numPadMultiply number
---@field numPadSubtract number
---@field numPadAdd number
---@field numPadEnter number
---@field numPadEqual number
---@field numPad0 number
---@field numPad1 number
---@field numPad2 number
---@field numPad3 number
---@field numPad4 number
---@field numPad5 number
---@field numPad6 number
---@field numPad7 number
---@field numPad8 number
---@field numPad9 number
---@field getName fun(code: number): string?
keys = {}

---@class shell
---Shell API for program execution and command line interface
---@field execute fun(command: string, ...: string): boolean
---@field run fun(...: string): boolean
---@field exit fun(): nil
---@field dir fun(): string
---@field setDir fun(dir: string): nil
---@field path fun(): string
---@field setPath fun(path: string): nil
---@field resolve fun(path: string): string
---@field resolveProgram fun(command: string): string?
---@field programs fun(include_hidden?: boolean): string[]
---@field complete fun(sLine: string): string[]?
---@field completeProgram fun(program: string): string[]
---@field setCompletionFunction fun(program: string, complete: fun(shell: table, index: number, argument: string, previous: string[]): string[]?): nil
---@field getCompletionInfo fun(): table<string, {fnComplete: function}>
---@field getRunningProgram fun(): string
---@field setAlias fun(command: string, program: string): nil
---@field clearAlias fun(command: string): nil
---@field aliases fun(): table<string, string>
---@field openTab fun(...: string): number
---@field switchTab fun(id: number): nil
shell = {}

---@class multishell
---Multishell API for running multiple programs simultaneously
---@field getFocus fun(): number
---@field setFocus fun(n: number): boolean
---@field getTitle fun(n: number): string?
---@field setTitle fun(n: number, title: string): nil
---@field getCurrent fun(): number
---@field launch fun(tProgramEnv: table, sProgramPath: string, ...): number
---@field getCount fun(): number
multishell = {}

---@class window
---Window creation and manipulation
---@field create fun(parent: table, x: number, y: number, width: number, height: number, visible?: boolean): Window
window = {}

---@class Window
---@field write fun(text: string): nil
---@field clear fun(): nil
---@field clearLine fun(): nil
---@field getCursorPos fun(): number, number
---@field setCursorPos fun(x: number, y: number): nil
---@field getCursorBlink fun(): boolean
---@field setCursorBlink fun(blink: boolean): nil
---@field isColor fun(): boolean
---@field getSize fun(): number, number
---@field scroll fun(lines: number): nil
---@field setTextColor fun(color: number): nil
---@field getTextColor fun(): number
---@field setBackgroundColor fun(color: number): nil
---@field getBackgroundColor fun(): number
---@field setVisible fun(visible: boolean): nil
---@field isVisible fun(): boolean
---@field redraw fun(): nil
---@field restoreCursor fun(): nil
---@field getPosition fun(): number, number
---@field reposition fun(x: number, y: number, width?: number, height?: number): nil
---@field getLine fun(y: number): string, string, string

---Global print function
---@param ... any
function print(...) end

---Global write function
---@param ... string
function write(...) end

---Read input from the terminal
---@param replaceChar? string Character to display instead of typed text (for passwords)
---@param history? string[] Previous input history
---@param completeFn? fun(partial: string): string[]? Completion function
---@param default? string Default text
---@return string
function read(replaceChar, history, completeFn, default) end

---Load a Lua chunk from a file
---@param filename string
---@param mode? "t"|"b"|"bt"
---@param env? table
---@return function?, string?
function loadfile(filename, mode, env) end

---Execute a file as a program
---@param path string
---@param ... any
---@return boolean
function dofile(path, ...) end
