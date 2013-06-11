-- ... supports infinite function arguments
function printArgs(...)
	print(...)
	local args = { ... }
	for i=1, #args do
		print(args[i])
	end
end

printArgs(1, 2, 5, 4, 3, "string")

