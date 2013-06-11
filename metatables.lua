local t = { a = 1, b = 2 }
local mt = { metaC = 3, goodKey = "Hi" }
--[[ 
The metatable is indexed
whenever a non-existant key
is referenced from its
associated table
]]--
mt.__index = function(tabl, key)
	return string.format("'%s' does not exist in %s", key, tabl)
	-- return tabl.key == nil 
	-- 	and key.." does not exist.\n" 
	-- 	or key.." exists.\n"
end

--[[
The metatable newindex function
is called whenever a new
key->value pair is added
to the associated table
]]--
mt.__newindex = function(tabl, key, newVal)
	print("You appended '"..newVal.."' with key '"..key.."' to "..tostring(tabl))
	return newVal
end

--[[
The metatable is called whenever
the associated table is treated
as though it were a function
]]--
mt.__call = function(tabl, ...)
	print("You called the following value(s) from "
		..tostring(tabl))
	print(...)
end

mt.__add = function(a, b)
	print("You are adding two tables together:\n",a,"and",b)
end

setmetatable(t,mt)

-- Indexing
print("t.b = "..t.b)
print("mt.metaC = "..getmetatable(t).metaC)
print(t.badKey) print(t.goodKey)

-- New Indexing
t.c = "three"
print(t.c)

-- Calling
t("Hello World")

-- Adding
print("t = "..tostring(t))
print("t added = "..tostring(t + { "z", "y", "x" }))