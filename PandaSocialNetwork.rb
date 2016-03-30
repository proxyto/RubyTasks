class Panda 
  def initialize(name, email, gender)
  	@name = name
  	@email = email
  	@gender= gender
  end
   attr_accessor :name
   attr_accessor :email
   attr_accessor :gender
  def to_s
   	   	"(#{@name},#{@email},#{@gender})"
  end
   	   
end
 
class Hash<Panda
	def pick(*keys)
   result={}
    each do |k,v|
     result[k]=v if keys.include? k
   end
   result
  end
	end

   
   class SocialNetwork<Hash
   	def initialize
   		@pandas={}
   	end
   	def add_panda(p)
   		@pandas[p]=p

   	end
   	def list
   		@pandas
   	end 
   end
   pand=SocialNetwork.new
   pand.add_panda(p)
   p pand.list
   
 