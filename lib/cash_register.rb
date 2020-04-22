class CashRegister

    attr_accessor :total, :lastprice
    attr_reader :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @lastprice = 0
    end

    def add_item(title, price, amount=1)
        amount.times do
            self.total += price
            self.items=(title)
            self.lastprice = price
        end
    end

    def apply_discount
        if self.discount > 0
            self.total -= self.total * self.discount/100
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    def items=(item)
        @items.push(item)
    end
    
    def items
        @items
    end
        

    def void_last_transaction
        count = self.items.count(self.items.last)
        while count >= 1
            self.items.pop
            self.total -= self.lastprice
            count -= 1
        end
        self.total
    end
end
