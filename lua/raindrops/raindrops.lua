return function(n)
	local response = ""
	if n % 3 == 0 then
		response = response .. "Pling"
	end
	if n % 5 == 0 then
		response = response .. "Plang"
	end
	if n % 7 == 0 then
		response = response .. "Plong"
	end
	if response == "" then
		return tostring(n)
	end
	return response
end
