def sum_digits(n)
   result = 0
   n.chars.each {|char| result += char.to_i}
   result
end

def balanced?(n)
	n = n.to_s
	mid=n.length / 2

	left_part = n.slice(0, mid)
	right_part = n.slice(mid + n.length % 2, n.length)

	sum_digits(left_part) == sum_digits(right_part)
end

puts balanced?(121)

#TRQBVA DA PITAM  ZA  METODA ZA6TO  VRU6TA TRUE PRI POLOJENIE 4E  NE E  VQRNO!!!!