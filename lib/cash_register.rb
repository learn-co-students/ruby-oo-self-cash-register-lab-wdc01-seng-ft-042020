class CashRegister

    attr_accessor :total, :discount, :items, :previous_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        if quantity > 1
            i = 0
            while i < quantity 
                @items << title
                i += 1
            end
        else
            @items << title
        end
        @total += price * quantity
        @cart << price * quantity
        @total
    end

    def apply_discount
        if @discount != 0
            @discount = @discount/100.to_f
            @total = @total - (@total * (@discount))
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -=  @cart.last
    end

end