class CreditCard 
	def initialize(num)
		@number=num
	end

	def type 
		length=@number.size
		if length==15 && @number =~/^(34|37)/
			"AMEX"
		elsif length==16 && @number=~/^6011/
			"Discover"
		elsif length==16 && @number=~/^5[1-5]/
			"MasterCard"
		elsif (length==13 || length==16) && @number=~/^4/
			"Visa"
		else
			"Unknown"
		end
	end

	def valid?
		digits=''
		@number.split('').reverse.each_with_index do |d,i|
			digits+=d if i%2==0
			digits +=(d.to_i*2).to_s if i%2==1
		end

		digits.split('').inject(0) {|sum,d| sum+d.to_i}%10==0
	end
end


card=CreditCard.new(ARGV.join.chomp)

if card.valid?
	puts "Card Type: #{card.type}"
	puts "Valid Card"
else
	puts "Invalid Card"
end

				