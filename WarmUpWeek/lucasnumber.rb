def nth_lucas(n)
  a,b =2,1
  2.upto(n) do
   a,b=b,a+b 
  end
  a
end
puts nth_lucas(5)
