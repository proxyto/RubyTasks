def max_scalar_product(v1,v2)
	v1=v1.sort
	v2=v2.sort

	v1.each_with_index
	.map{|x,i| x * v2[i]}
	.reduce(&:+)
end

puts max_scalar_product([3,4,3,6],[5,3,6,4])

