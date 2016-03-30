def zero_insert(n)
	 result = ''
 	 index, n=0, n.to_s

 	 while index < n.length - 1
 	 	a,b = n[index].to_i, n[index + 1].to_i
 	 	result += a.to_s
 	 	result += '0' if a==b || (a + b) % 10 == 0

 	 	index += 1
 	 	
 	 end

 	 result += n[index]
 	 result
end

puts zero_insert(116457)