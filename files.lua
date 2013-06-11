function fileRead(filename)
	local file = io.open(filename, "r")
	local text = file:read("*all")
	file:close()
	return text
end

function fileWrite(filename, text)
	local file = io.open(filename, "w")
	file:write(text)
	file:close()
end

function fileAppend(filename, text)
	local file = io.open(filename, "a")
	file:write(text)
	file:close()
end

local filename = "testDoc2.txt"

--print(filename.." currently reads: \""..readFile(filename).."\"")
io.write("Please enter some text: ")
input = io.read()
print("You entered: "..input)
writeFile(filename, "The user entered: "..input)
