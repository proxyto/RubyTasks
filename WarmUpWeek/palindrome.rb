def palindrome?(object)
	object.to_s.reverse==object.to_s
end
def p_score(n)
	return  1 if palindrome? n
	1 + p_score(n+n.to_s.reverse.to_i)
end
def  largest_palindrome(n)
	n-=1
	n-=1 until palindrome? n 
    n		
end
 puts palindrome?(11011)
 puts p_score(11011)
 puts largest_palindrome(11011)