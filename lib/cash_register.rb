require "pry"

class CashRegister

    attr_accessor :total, :items
    attr_reader :total, :discount


    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
    end

    def add_item(item, cost, quantity = 1)
        self.total += (cost * quantity)
        while quantity > 0
            self.items << item
            quantity -= 1
        end
    end

    def apply_discount
        #binding.pry
        if self.discount == 0
            return "There is no discount to apply."
        end
        self.total *= (1-self.discount/100.0)
        return "After the discount, the total comes to $#{self.total.to_i}."
    end


    


end
