class Dessert

	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	
	attr_accessor :name
	attr_accessor :calories
	
	def healthy?
		return @calories < 200
	end
	
	def delicious?
		return true
	end
	
end

class JellyBean < Dessert

	def initialize(name, calories, flavor)
		super(name,calories)
		@flavor = flavor
	end
	
	attr_accessor :flavor
	
	def delicious?
		return @flavor.downcase != "black licorice"
			
	end
	
end