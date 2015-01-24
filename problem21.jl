# function properdivisors(n)
# 	d = Int[]
# 	for i in 1:div(n,2)+1
# 		if n % i == 0
# 			push!(d,i)
# 		end
# 	end
# 	return d
# end

function properdivisors(n)
	d = [1]
	for i in 2:isqrt(n)+1
		if n % i == 0
			push!(d,i)
			other = div(n,i)
			if i != other
				push!(d,other)
			end
		end
	end
	return d
end

function main()
	N = 10000

	s = 0
	for a in 1:N
		da = sum(properdivisors(a))
		b = da
		db = sum(properdivisors(b))
		if a == db && b == da && a != b
			println("$a $b")
			s += a
		end 
	end
	println(s)
end

main()
