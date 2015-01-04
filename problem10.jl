
function main()
	N = 2_000_000
	res = 0
	for i = 1:N
		if isprime(i)
			res += i
		end
	end
	println(res)
end

main()
