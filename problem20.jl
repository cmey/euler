function main()
	N = 100
	s = string( factorial(big(N)) )
	reduce(+, map(parseint,collect(s)))
end

main()
