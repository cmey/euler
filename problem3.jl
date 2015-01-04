function main()
	N = 600_851_475_143
	for i = isqrt(N):-1:1
		if 0 == N % i && isprime(i)
			println(i)
			break
		end
	end
end

main()
