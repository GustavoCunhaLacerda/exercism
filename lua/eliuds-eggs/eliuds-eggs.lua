local EliudsEggs = {}

function EliudsEggs.egg_count(number)
	local resultadoDivisao = number
	local qtdOvos = 0

	while resultadoDivisao >= 1 do
		local resto = resultadoDivisao % 2
		if resto == 1 then
			qtdOvos = qtdOvos + 1
		end
		resultadoDivisao = (resultadoDivisao - resto) / 2
	end

	return qtdOvos
end

return EliudsEggs
