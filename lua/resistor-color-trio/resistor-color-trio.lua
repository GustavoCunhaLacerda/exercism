return {
	decode = function(c1, c2, c3)
		local resistor_values = {
			black = 0,
			brown = 1,
			red = 2,
			orange = 3,
			yellow = 4,
			green = 5,
			blue = 6,
			violet = 7,
			grey = 8,
			white = 9,
		}

		local ohms = resistor_values[c1]
		local size = ""
		local zeros = resistor_values[c3]

		if resistor_values[c2] == 0 then
			zeros = zeros + 1
		else
			ohms = tonumber(ohms .. resistor_values[c2])
		end

		if zeros >= 9 then
			ohms = ohms * (10 ^ (zeros % 9))
			size = "giga"
		elseif zeros >= 6 then
			ohms = ohms * (10 ^ (zeros % 6))
			size = "mega"
		elseif zeros >= 3 then
			ohms = ohms * (10 ^ (zeros % 3))
			size = "kilo"
		elseif zeros >= 2 then
			ohms = ohms * (10 ^ (zeros % 2))
			size = "hecto"
		elseif zeros >= 1 then
			ohms = ohms * 10
		end

		size = size .. "ohms"

		return ohms, size
	end,
}
