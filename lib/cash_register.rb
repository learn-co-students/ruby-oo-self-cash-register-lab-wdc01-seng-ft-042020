require 'pry'
class CashRegister
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @transaction_history = []
    end
    attr_accessor :discount, :total, :items

    def add_item(item, price, quantity=1)
        self.total += (price * quantity).round(2)
        @transaction_history << [item, price, quantity]
        while quantity > 0 do
            @items << item
            quantity -= 1
        end
        self.total = self.total.round(2)
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            factor = 1 - (discount.to_f / 100)
            self.total *= factor
            "After the discount, the total comes to $#{@total.round()}."
        end
    end

    def void_last_transaction
        @items.pop
        self.total -= (@transaction_history[-1][1] * @transaction_history[-1][2])


        self.total = self.total.round(2)
        @transaction_history.pop
    end

end


asd = CashRegister.new(20)
asd.add_item("tomato", 1.76, 2)
puts asd.total
asd.void_last_transaction
puts asd.total




# puts asd.discount
# asd.add_item('spam', 2.00)
# puts asd.total
# asd.add_item('eggs', 1.00, 2)
# asd.add_item('cheese', 1.85, 3)
# asd.add_item("corn", 4.99)
# puts asd.total
# p asd.items
# asd.void_last_transaction
#
# asd.void_last_transaction
# asd.void_last_transaction
# asd.void_last_transaction
# asd.void_last_transaction
# asd.void_last_transaction
# asd.void_last_transaction
# p asd.items
# puts asd.total
# asd.void_last_transaction
# puts asd.total
# print asd.items
# puts asd.total
#
# puts asd.apply_discount
# puts asd.total.round(2)
