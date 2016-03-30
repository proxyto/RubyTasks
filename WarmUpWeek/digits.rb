def to_digits(n)
  n.to_s.chars.map {|d| d.to_i}
end
def count_digits(n)
	to_digits(n).length
end
def sum_digits(n)
	to_digits(n).reduce {|a,e| a+e}
end
def factorial_digits(n)
	to_digits(n).reduce {|a,e| a*e}
end
 puts to_digits(12345)
 puts count_digits(12345)
 puts sum_digits(12345)
 puts factorial_digits(12345)