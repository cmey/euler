
function main()
	N = 10_001
	i = 1
	p = 2
	while i <= N
		if isprime(p)
			println(p)
			i += 1
		end
		p += 1
	end
end

main()
