function main()
	-- Instantiate coroutines and a counter for how many have died
	local routines = {
		coroutine.create(routine1),
		coroutine.create(routine2),
		dead = 0, -- String keys are not counted by the length operator (#)
	}
	local exTime = 5 -- How many seconds the application may run
	local now = os.time()

	-- While the time limit is not up and not all routines are dead
	while (os.time() - now < exTime) and (routines.dead <= #routines - 1) do
		-- Print the status of all routines
		getRoutinesStatus(routines)

		-- For each routine..
		for i=1, #routines do
			-- If it is not dead..
			if coroutine.status(routines[i]) ~= "dead" then
				-- Resume it
				coroutine.resume(routines[i])
			else
				-- Increment the routine death counter
				routines.dead = routines.dead + 1
			end
		end
	end
end

-- Prints the status of all routines in a table of routines
function getRoutinesStatus(routines)
	for i=1, #routines do
		print("routine "..i, coroutine.status(routines[i]))
	end
end

function routine(id)
	print("I am routine 1")
	coroutine.yield() -- Return to parent scope temporarily
	-- The thread will continue executing from this point when resumed
	print("I am routine 1 again")
end

function routine2()
	print("I am routine 2")
	coroutine.yield()
	print("I am routine 2 again")
end

main()