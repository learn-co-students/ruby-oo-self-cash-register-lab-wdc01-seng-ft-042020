class CashRegister
    attr_accessor :total, :title, :price, :last_price
    attr_reader :discount, :items 
    attr_writer 

    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_price 
    end

    def add_item(title, price, amount = 1)
        self.total += price * amount
        self.last_price = price * amount
        while amount >= 1
            self.items << title
            amount -= 1
        end
    end

    def apply_discount
        if self.discount > 0
            self.total -=  self.discount / 100.0 * self.total
            return "After the discount, the total comes to $800."
        else
            return "There is no discount to apply."
        end 
    end

    def items=(item)
        @items << item
    end

    def void_last_transaction
        self.total -= self.last_price
    end
end


