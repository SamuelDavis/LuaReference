-- Namespace the Person class
local PersonModule = {}

-- Person Definition / Constructor
function PersonModule.NewPerson(name, age)
	-- Create object
    local person = {}

    -- Initialize object
    person.name = name
    person.age = age

    -- Define object methods
	function person:getName()
		return person.name
	end

	function person:sayHello()
		print(string.format("Hello. My name is %s. What's yours?", person.name))
		you = io.read()
		if you ~= "" then
			print("It's nice to meet you "..you..".")
			person.friend = you
		else
			print("Hello, anyway.")
			person.friend = false
		end
	end

	function person:sayGoodbye()
		if person.friend then
			io.write("Goodbye "..person.friend..".\n")
		else
			io.write("Goodbye, friend.\n")
		end
	end

	-- Return instantiated object
    return person
end

-- Return class to Main
return PersonModule