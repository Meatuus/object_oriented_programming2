class Receipt

	attr_accessor :shopping_bag

	def initialize
		@shopping_bag = []
	end
### put inside initialize *******
	def add_to_shopping_bag(item)
		shopping_bag << item
	end

	def sub_total
		sub_total = 0
		@shopping_bag.each do |add|
			sub_total += add.cost
		end
		sub_total
	end

	def tax_total
		tax_total = 0
		@shopping_bag.each do |add|
			tax_total += add.tax
		end
		tax_total
	end

	def total
		bill_total = sub_total + tax_total
	end

	def print_receipt
		puts "RECEIPT:"
		shopping_bag.each do |print|
			puts "#{print.quantity} - #{print.name}:  $#{'%.2f' % print.cost}"
		end
		puts "Sub-Total : $#{'%.2f' % sub_total}"
		puts "Tax       : $#{'%.2f' % tax_total}"
		puts "Total     : $#{'%.2f' % total}"
	end

end
