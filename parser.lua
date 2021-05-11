parser = {}

parser.seperator = ","

function parser.getKey(line)
	return line.split(" = ")[0]
end

function parser.getValue(line)
	return line.split(" = ")[1]
end

function parser.getType(line)
	if string.match(line, ",") then return "a" end
	if not string.match(line, ",") then return "s" end
end

function parser.stringToArray(data)
	local array = {}

	for item in string.gmatch(data, "[^;]+") do
		table.insert(array, item)
	end

	return array
end

function parser.readLines(file)
	local file = io.open(file, "r")
	local lines = file:lines()

	file:close()

	return lines
end

function parser.Parse(faction_file)
	local lines = parser.readLines(faction_file)
	local DATA

	for line in pairs(lines) do
		local key = parser.getKey(line)
		local value = parser.getValue(line)

		if parser.getType(value) == "s" then
			DATA[key] = value
		elseif parser.getType(value) == "a" then
			local array = parser.stringToArray(value)
			DATA[key] = array
		end
	end

	return DATA
end
