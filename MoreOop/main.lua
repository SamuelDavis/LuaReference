-- Import the Person class
local Person = require "person"

-- Instantiate the Person class
local Guy1 = Person.new("Guy", 23)

-- Manipulate the Person object
Guy1:sayHello()
Guy1:sayGoodbye()