function printTable(t)
	for i=1, #t do
		print(t[i])
	end
end

a = 1
b = "two"
c = true

myTable = { a, b, c, { "a", "b", "c" } }

table.insert(myTable, "This element was inserted.")

table.remove(myTable, 1)

printTable(myTable)