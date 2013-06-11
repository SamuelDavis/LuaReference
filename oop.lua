local Object = { }
local mt = { }
objects = { } -- Holder array for Objects

-- Define metatable methods for Object
mt.__index = function(tabl, key)
	if key == "id" then
		return tabl._id 
	elseif Object[key] == nil then
		print(tostring(tabl).." has no memeber '"..key.."'.")
	else
		return Object[key]
	end
end

mt.__newindex = function(tabl, key, val)
	if key == "id" then
		print("'id' is readonly")
	else
		print(tostring(tabl).." has no memeber '"..key.."'.")
	end
end

-- Define methods for Object
--[[
Colon methods have a (secret) first argument
the "self" argument references the object.
]]--
--[[
The :new method is called whenever
the object is instantiated
]]--
function Object:new(name)
	-- Create new table (for object)
	local o = { }
	-- Initialize properties
	o._id = #objects + 1 -- Example of how to create readonly variables
	o.name = name
	-- Set metatable (for object)
	local m = setmetatable(o, mt)
	-- Add new object to objects holder
	table.insert(objects, o)
	-- return newly created object
	return o
end

function Object:setId(newId)
	self._id = newId
end


-- Main
function printObject(o)
	for k,v in pairs(o) do
		print(k..": "..v)
	end
	print()
end

function printObjects()
	for i=1,#objects do
		printObject(objects[i])
	end
end


local o1 = Object:new("Jeremy")
local o2 = Object:new("Geoff")
local o3 = Object:new("Ralph")
local o4 = Object:new("Bengie")
printObjects()