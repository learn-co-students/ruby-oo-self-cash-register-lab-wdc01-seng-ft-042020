class CashRegister
#attr_reader :discount
attr_accessor :total,:discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @cart = []
    end 

    def add_item(title, price, quantity=1)

        quantity.times do
            self.items << title
        end 
        self.total += price * quantity
        @cart << price * quantity
    end 

    def apply_discount
        if  @discount != 0
        discount = @discount/100.to_f
        self.total = self.total - (self.total * discount)
        #self.total
        "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
       end
    end 
    # def items
    #     @items
    # end
    def void_last_transaction
        self.total -= @cart.last 
    end
end 
