def count_vowels(str)
	vowels='aeiouy'.chars
	str.downcase
	   .chars
	   .select {|ch| vowels.include? ch}
	   .length
end
puts count_vowels("Hello World")