local Darts = {}

function Darts.score(x, y)
	local hipotenusa = ((x ^ 2) + (y ^ 2)) ^ 0.5

	if hipotenusa <= 1 then
		return 10
	elseif hipotenusa <= 5 then
		return 5
	elseif hipotenusa <= 10 then
		return 1
	end

	return 0
end

return Darts
