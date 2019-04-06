component = require("component")
serialization = require("serialization")
sides = require("sides")
event = require("event")

require("itemdef")
require("itemmgr")

args = {...}

local gpu
local width = 32
local height = 20

--local redstone_1

function lockGrid()
  component.proxy(config.redstoneGrid).setOutput(config.redstoneGridSide, 1)
end
function unlockGrid()
  component.proxy(config.redstoneGrid).setOutput(config.redstoneGridSide, 0)
end

function setStatus(string)
  gpu.fill(1, 1, width, 1, " ")
  if gpu.set(1,1, string) == false
  then
	print("shit")
  end
  
  print(string)
end

function printTable(oreCounts, productCounts, inStock)
  gpu.fill(1, 2, width, height - 1, " ")
  
  gpu.set(1, 2, "You insert:")
  
  for i, ore in ipairs(ores) do
	local oreCount = oreCounts[ore]
  
	if (oreCount > 0) then
      gpu.set(1, 2 + i, tostring(oreCount))
      gpu.set(5, 2 + i, "stk " .. ore .. " ore")
	end
  end
  
  gpu.set(1, 9, "You will get:")

  for i, ingot in ipairs(ores) do
    local ingotCount = productCounts[ingot]
  
	if (ingotCount > 0) then
	  gpu.set(1, 9 + i, tostring(ingotCount))
      gpu.set(5, 9 + i, "stk " .. ingot  .. " ingot")
	end
  end
end

function waitOk()
  -- Possibly relevant redstone event thingy.
  -- https://oc.cil.li/index.php?/topic/490-using-bundled-cables-quickly/
  event.pullFiltered(10000, eventFilter)
  component.proxy(config.screenAdrr).turnOn()--workaround for redstone shutting off screens
	if (component.proxy(config.redstoneOk).getInput(config.redstoneOkSide) > 0) then
		print("accepted")
      return true
    end
	if (component.proxy(config.redstoneCancel).getInput(config.redstoneCancelSide) > 0) then
		print("canceled")
      return false
    end
end

function eventFilter(name,...)
	if name ~= "redstone_changed"
	then
		return false
	end
	address = select(1, ...)
	side = select(2, ...)
	oldval = select(3, ...)
	newval = select(4, ...)
	--print(address)
	--print(side)
	--print(oldval)
	--print(newval)
	
	if newval > 0
	then
		return true
	end
	return false
end

function ui()

  if (args[1] == "conf") then
    configure();
	
    return
  end
	
	loadConfig()
	initGpu()
	
	while true do
	  setStatus("Welcome to Autore!")
	  setStatus("Input your ores and press ok to start processing.")
	  waitOk()
	  lockGrid()
	  
	  local orecounts = countOres()
	  local products = calculateProducts(orecounts)
	  local inStock = countProductsStock()
	  --limitOres(orecounts,inStock)
	  printTable(orecounts, products, inStock)
	 
	  setStatus("Accept: Y/n")
	  
	  if (waitOk()) then
		print("trade begin")
		doTrade(orecounts, products)
		print("trade end")
	  end
	  
	  unlockGrid()
	  gpu.fill(1, 1, width, height, " ")
	end
end

function configure()
  local config = {}
    
  print("public output guid")
  config.publicAdrr = component.get(io.read())
  print("public output side")
  config.publicSide = sides[io.read()]
    
  print("private output guid")
  config.privateAdrr = component.get(io.read())
  print("private output side")
  config.privateSide = sides[io.read()]
	
  print("gpu guid")
  config.gpuAdrr = component.get(io.read())
    
  print("screen guid")
  config.screenAdrr = component.get(io.read())
    
  print("redstone 1")
  config.redstone_1 = component.get(io.read())
	
  configstring = serialization.serialize(config)
  print(configstring)
	
  local f = io.open("config", "w")
  f:write(configstring)
  f:close()
end
 
function loadConfig()
  local f = io.open("config", "r")
  config = serialization.unserialize(f:read("*all"))
  f:close()
  
  publicRs = component.proxy(config.publicAdrr)
  privateRs = component.proxy(config.privateAdrr)
  --redstone_1 = component.proxy(config.redstone_1)
end

function initGpu()
  gpu = component.proxy(config.gpuAdrr)
  gpu.bind(config.screenAdrr)
  gpu.setResolution(width, height)
  gpu.fill(1, 1, width, height, " ")
  gpu.setForeground(0xFFFFFF)
  gpu.setBackground(0x000000) 
end
ui()
