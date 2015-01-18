using Match

function countletters()
end

function countletters(n)
	assert(0 <= n <= 1000)
	return @match n begin
		0 => length("")
   		1 => length("one")
   		2 => length("two")
   		3 => length("three")
   		4 => length("four")
   		5 => length("five")
   		6 => length("six")
	   	7 => length("seven")
   		8 => length("eight")
   		9 => length("nine")
   		10 => length("ten")
   		11 => length("eleven")
   		12 => length("twelve")
   		13 => length("thirteen")
   		14 => length("fourteen")
   		15 => length("fifteen")
   		16 => length("sixteen")
   		17 => length("seventeen")
   		18 => length("eighteen")
   		19 => length("nineteen")
		1000 => length("onethousand")
   		_    => 
   			if 20 <= n <= 29 
   				length("twenty") + countletters(n%10)
   			elseif 30 <= n <= 39
   				length("thirty") + countletters(n%10)
   			elseif 40 <= n <= 49
   				length("forty") + countletters(n%10)
   			elseif 50 <= n <= 59
   				length("fifty") + countletters(n%10)
   			elseif 60 <= n <= 69
   				length("sixty") + countletters(n%10)
   			elseif 70 <= n <= 79
   				length("seventy") + countletters(n%10)
   			elseif 80 <= n <= 89
   				length("eighty") + countletters(n%10)
   			elseif 90 <= n <= 99
   				length("ninety") + countletters(n%10)
   			elseif 100 <= n <= 999
   				countletters(div(n,100)) + length("hundred") + ((n % 100) > 0 ? length("and") + countletters(n % 100) : 0)
   			end
	end
end

function main()
	assert(countletters(342) == 23) #"three hundred and forty two"
	assert(countletters(115) == 20) #"one hundred and fifteen"
	assert(sum(map(countletters,1:5)) == 19)
	assert(sum(map(countletters,1:9)) == 36)
	assert(sum(map(countletters,10:19)) == 70)
	assert(sum(map(countletters,20:99)) == 748)
	assert(sum(map(countletters,100:999)) == 20259)
	N = 1000
	s = sum(map(countletters,1:N))
	println(s)
end

main()
