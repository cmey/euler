function main()
	N = 4_000_000
	s = 0
	i1 = 1
	i2 = 1
	while true
		fib = i1 + i2
		i1 = i2
		i2 = fib
		if fib > N
			break
		end
		if fib % 2 == 0
			s += fib
		end	
	end
	println(s)
end

main()