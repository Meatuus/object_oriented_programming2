class List

	def initialize(type, name, origin, cost, quantity)
		@type     = type
		@origin   = origin
		@name     = name
		@cost     = cost.to_f
		@quantity = quantity.to_i
	end

	def purchase
		subtotal = @cost * @quantity
		puts "#{@quantity} #{@name}: $ #{subtotal}"
	end
end


class Reciept < List

	def tax
		if @type == "food" || "books" || "medical" && @origin == "local"
			tax = 0
		elsif @type == (food || books || medical) && @origin == imported
			tax = purchase * 0.05
		elsif @type != (food || books || medical) && @origin == local
			tax = purchase * 0.10
		else
			tax = purchase * 0.15
		end
	end

	def total
		total_bill = purchase + tax
		puts "#{purchase}"
		puts "#{tax}"
		puts "#{total_bill}"
	end

end


									#   class  quantity item  cost
# shopping_basket = {["books", 1, "book", 12.50], }
choc = Reciept.new("food", "Chocolate Bar", "local", 5.50, 1)
choc.total
