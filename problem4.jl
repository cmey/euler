function ispalindrome(n)
	s = string(n)
	return s == reverse(s)
end

function main()
	bestpal = 0
	for i = 999:-1:100
		for j = 999:-1:100
			n = i*j
			if ispalindrome(n)
				if n > bestpal
					bestpal = n
					println(n)
				end
			end
		end
	end
end

main()
