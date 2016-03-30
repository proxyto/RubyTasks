def anagrams?(a,b)
	a.chars.sort == b.chars.sort
end

puts anagrams?("eye","eye")