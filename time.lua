-- Seconds since epoch that program started
startTime = os.time()
updateCount = 1 -- Update counter

-- Update state of program
local function update()
	now = os.time()
	-- Log relavent data
	print("UPDATE "..updateCount..": runtime = "..now - startTime.." sec ("..now..")")
	updateCount = updateCount + 1 -- Increment update count
end

-- Sleep function to slow updates by @delay seconds
local function sleep(delay)
	local t0 = os.time() -- Get current time

	-- Loop infinitely whilst < @delay seconds have passed
	while os.time() - t0 < delay do end
end

-- Function which calls update infinately on the sleep() timer
local function run()
	while true do
		update()
		sleep(3)
	end
end

run() -- Start application loop