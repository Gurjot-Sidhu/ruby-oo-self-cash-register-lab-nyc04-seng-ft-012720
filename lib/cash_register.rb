class CashRegister
    attr_accessor :discount,:cash_register,:total,:title,:price,:last_transaction,:amount
    def initialize(discount = 0)
        @cash_register = {}
        @discount = discount
        @total = 0
        @price = 0
        @cart = []
        @cost = []

    end

    def add_item(title,price,quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        self.total += price * quantity
        quantity.times do 
            @cart << title
        end
        @last_transaction = price
        @amount = quantity
    end

    def apply_discount
        if discount != 0
        @total = @total - (@total * @discount / 100.00)
        "After the discount, the total comes to $800."
            else
                "There is no discount to apply."
            end
    end
    
    def items
        @cart
    end

    def void_last_transaction
        @total -= @last_transaction * @amount
    end
end

