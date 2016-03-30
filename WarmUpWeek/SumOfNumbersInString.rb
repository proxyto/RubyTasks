def char_is_positive_digit?(n)
	123_456_789_0.to_s.chars.include? n
end
def sum_of_number_in_string(str)
	result=0
	chars=str.chars

    while chars.length > 0
    	ns=chars.take_while { |ch| char_is_positive_digit? ch}
		result+=ns.join('').to_i

		if ns.length==0
		  chars=chars.drop_while {|ch| !char_is_positive_digit? ch}
		else
			chars=chars.drop(ns.length)
		end
	end
	result
end

puts sum_of_number_in_string("Hello")