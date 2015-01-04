
using NumericExtensions
function main()
	N = big(100)
	n = sum([1:N])^2 - sumsq([1:N])
	println(n)
end

main()
