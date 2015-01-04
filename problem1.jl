N = 1000-1
sum = 0
for i = 1:N
	if i % 3 == 0 || i % 5 == 0
#		println(i)
		sum += i
	end	
end
println(sum)