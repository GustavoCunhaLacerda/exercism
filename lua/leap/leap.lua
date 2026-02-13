local leap_year = function(number)
	if number % 100 == 0 then
		if number % 400 == 0 then
			return true
		end
	elseif number % 4 == 0 then
		return true
	end
	return false
end

return leap_year
