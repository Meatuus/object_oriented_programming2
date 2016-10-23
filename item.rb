class Item

	attr_accessor :type, :name, :origin, :cost, :quantity, :tax

	def initialize(type, name, origin, cost, quantity)
		@type     = type
		@origin   = origin
		@name     = name
		@cost     = cost * quantity
		@quantity = quantity

		@tax = 0
	end

	def tax #calculates tax on purchase
		if @origin == "local" && (@type == "food" || @type == "books" || @type == "medical")
			tax = 0
		elsif @origin != "local" && (@type == "food" || @type == "books" || @type == "medical")
			tax = @cost * 0.05
		elsif @origin == "local" && (@type != "food" || @type != "books" || @type != "medical")
			tax = @cost * 0.10
		else
			tax = @cost * 0.15
		end
	end

end
