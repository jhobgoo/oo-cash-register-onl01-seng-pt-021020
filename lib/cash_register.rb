require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @total = 0 + price
  end
  
  def apply_discount
    #check to see if there is a discount
    #if false, return "There is no discount to apply."
    #if true, and the discount is a standard_discount, multiply standard_discount percentage by @total
    #else if true, there is an employee_discount, multiply employee_discount percentage by @total
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    #return @total minus the total amount of the added price values of the @items array
  end
  
end

