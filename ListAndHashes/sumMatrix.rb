def sum_matrix(m)
	m.map {|row| row.reduce(&:+)}.reduce(&:+)
end

puts sum_matrix([[1,2,3],[4,5,6],[7,8,9]])