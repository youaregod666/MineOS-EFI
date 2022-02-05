bit32 = bit32 or require("Bit32")
local image = require("Image")
local text = require("Text")
local number = require("Number")

local screen = require("Screen")
screen.setGPUProxy(GPUProxy)

local GUI = require("GUI")
local system = require("System")
local paths = require("Paths")

-- Flashing EEPROM
	layout:removeChildren()
	addImage(1, 1, "EEPROM")
	workspace:draw()
	
	EEPROMProxy.set(request(EFIURL))
	EEPROMProxy.setLabel("MineOS EFI")
	EEPROMProxy.setData(selectedFilesystemProxy.address)
