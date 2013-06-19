-- Declare Person class
local Person = {}
Person.__index = Person -- Set up Meta indexing

-- Person Definition / Constructor
function Person.new(name, age)
	-- Create meta table
	local self = setmetatable({}, Person)

    -- Initialize object
    self.name = name
    self.age = age

	-- Return instantiated object
    return self
end

-- Define object methods
-- Methods accept reference to self
-- as (secret)first argument
function Person.getName(self)
	return self.name
end

function Person.sayHello(self)
	print(string.format("Hello. My name is %s. What's yours?", self.name))
	you = io.read()
	if you ~= "" then
		print("It's nice to meet you "..you..".")
		self.friend = you
	else
		print("Hello, anyway.")
		self.friend = false
	end
end

function Person.sayGoodbye(self)
	if self.friend then
		io.write("Goodbye "..self.friend..".\n")
	else
		io.write("Goodbye, friend.\n")
	end
end

-- Return class to Main
return Person