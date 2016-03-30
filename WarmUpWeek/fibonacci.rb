def first_fib(n)
	a,b=1,1
	result=[a]
	2.upto(n)  do
		a,b=b,a+b
		result<<a
		
	end
	result
end
puts first_fib(10)