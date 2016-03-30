def count_consonants(str)
	consonants='qwrtplkjhgfdsmnbvcxz'.chars
	str.downcase
	   .chars
	   .select {|ch| consonants.include? ch}
	   .length
end
puts count_consonants("Hello World")