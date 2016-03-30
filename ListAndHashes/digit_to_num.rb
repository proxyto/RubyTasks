def number_to_digits(n)
	n.to_s.chars.map(&:to_i)
end

def digits_to_number(*digits)
	digits.reduce(0) {|a,e| a * 10 + e}
end

#puts number_to_digits(11564)
puts digits_to_number(1,2,3,4)