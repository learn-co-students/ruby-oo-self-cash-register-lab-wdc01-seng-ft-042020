class CashRegister
    
    attr_accessor :discount, :total, :cart, :price_cart

    def initialize (discount= 0)
        @total = 0
        @discount = discount
        @cart = []
        @price_cart = []
    end

    def add_item(title, price, quantity= 1)
        quantity.times do
        self.cart << title
        end
        self.price_cart << price * quantity
        @total += (price * quantity)
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
        self.total = self.total - (self.total * self.discount/100)
        "After the discount, the total comes to $#{self.total}." 
        end
    end

    def items
        self.cart
    end

    def void_last_transaction
        self.total -= self.price_cart.last
    end




end



#     total = 0
#   #the shopping_cart method holds an array of all the user's items
#   shopping_cart.each do |item|
#     total += item.price
#   end
 
#   if discount == 10
#     total = total - total * 10 / 100.00
#   elsif discount == 20
#     total = total - total * 20 / 100.00
#   elsif discount == 50
#     total = total - total * 50 / 100.00
#   end
 
#   total


#   def checkout
#     total = 0
#     #the shopping_cart method holds an array of all the user's items
#     shopping_cart.each do |item|
#       total += item.price
#     end
 
#     if coupon
#       total = total - total * coupon / 100.00
#     end
 
#     total
 
#   end


#   total = 0
#   #the shopping_cart method holds an array of all the user's items
#   shopping_cart.each do |item|
#     total += item.price
#   end

#   if coupon
#     total = total - total * coupon / 100.00
#   end

#   total

# end




