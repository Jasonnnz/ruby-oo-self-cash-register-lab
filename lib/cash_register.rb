require 'pry'
class CashRegister
    attr_accessor :total, :discount

    def initialize(discount = 0.0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @price = price
        @quantity = quantity
        quantity.times do 
            @items << title
        end
        @total += (price * quantity)
    end

    def apply_discount
        if @discount != 0 
            @total = (@total * ((100.0 - @discount)/100)).to_i 
            p "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    
    def items
        @items
    end

    def void_last_transaction
        @total -= (@price * @quantity)
    end

end
