-- Shortand if/else statement
local a = 1 print("a = "..a)
local b = a == 1 and "b: a = 1" or "b: a ~= 1"
print(b)
a = 2 print("a = "..a)
b = a == 1 and "b: a = 1" or "b: a ~= 1"
print(b)

-- Shorthand if/elseif/else
-- Using tabs, Lua code can span multiple lines
a = 1 print("a = "..a)
b = a == 1 and "b: a = 1" 
	or a == 2 and "b: a = 2" 
	or "b: a ~= 1 and a ~= 2"
print(b)
a = 2 print("a = "..a)
b = a == 1 
		and "b: a = 1" 
	or a == 2 
		and "b: a = 2" 
	or "b: a ~= 1 and a ~= 2"
print(b)
a = 3 print("a = "..a)
b = a == 1 
		and "b: a = 1" 
	or a == 2 
		and "b: a = 2" 
	or "b: a ~= 1 and a ~= 2"
print(b)