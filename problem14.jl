function numcollatz(n)
	numiters = 0
	while n > 1
		#print("$n ")
		if n % 2 == 0
			n = div(n,2)
		else
			n = 3n + 1
		end
		#println("$n")
		numiters += 1
	end
	return numiters
end

function main()
	N = 1_000_000

	bests = 0
	bestl = 0
	i = 0
	while i <= N
		i += 1
		l = numcollatz(i)
		if l > bestl
			println("$i $l")
			bestl = l
			bests = i
		end
	end
	println("start=$bests length=$bestl")
end

main()
