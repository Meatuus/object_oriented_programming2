require_relative 'item'
require_relative 'receipt'

tylers_bill = Receipt.new

gens_bill = Receipt.new

chocolate = Item.new("food", "Chocolate Bar", "local", 5.25, 1)
banana = Item.new("food", "Banana", "local", 0.50, 1)
mango = Item.new("food", "Mango", "import", 0.80, 5)
tylenol = Item.new("medical", "Tylenol", "import", 3.20, 1)
cook_book = Item.new("books", "Cook Book", "local", 12.35, 1)
tissues = Item.new("other", "Tissues", "local", 2.50, 2)
toothpick = Item.new("other", "Toothpicks", "import", 0.75, 1)
magazine = Item.new("other", "Magazine", "import", 5.25, 1)
card = Item.new("other", "Birthday Card", "local", 4.75, 1)

tylers_bill.add_to_shopping_bag(chocolate)
tylers_bill.add_to_shopping_bag(banana)
tylers_bill.add_to_shopping_bag(mango)
tylers_bill.add_to_shopping_bag(cook_book)
tylers_bill.add_to_shopping_bag(tissues)
tylers_bill.add_to_shopping_bag(toothpick)

tylers_bill.print_receipt

gens_bill.add_to_shopping_bag(tylenol)
gens_bill.add_to_shopping_bag(chocolate)
gens_bill.add_to_shopping_bag(magazine)
gens_bill.add_to_shopping_bag(card)
gens_bill.add_to_shopping_bag(tissues)

gens_bill.print_receipt
