local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
	local numberString = tostring(number)
	local numberLen = #numberString

	local sum = 0

	for i = 1, numberLen do
		local digit = numberString:sub(i, i)
		local digitValue = tonumber(digit)

		sum = sum + digitValue ^ numberLen
	end

	if sum == number then
		return true
	end

	return false
end

return ArmstrongNumbers
