def fact(n)
1.upto(n).reduce {|a,e|  a*e}
end
puts fact(5)
