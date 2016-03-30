def hack?(n)
	bn=n.to_s 2
	bn.count('1').odd? && bn.reverse==bn
end
def next_hack?(n)
	n=n.next
	n=n.next until hack? n
	n
end
puts hack?(234514)
puts next_hack?(4353)