 def long(nums)
 length=1
 start=0
 bestlength=0
 beststart=0
  i=1
   while i < nums.length
       length+=1 if nums[i-1]==nums[i] 
       if bestlength<length 
            bestlength=length
            beststart=start
        end
        length=1
        start=i
        i+=1
    end

    j=beststart
    while j < (bestlength + beststart)
      nums[j]
      j+=1
    end

  puts "The max subsequence of #{nums} is  formed by num  "
  nums[j]
end
 puts long([1,2,3,3,3,3,4,3,3])
