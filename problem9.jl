
function main()
	N = 1_000
	for a = 1:N
		for b = 1:N
			for c = 1:N
				if a+b+c == 1000 && a*a + b*b == c*c
					println("$a $b $c")
				end
			end
		end
	end
end

main()
