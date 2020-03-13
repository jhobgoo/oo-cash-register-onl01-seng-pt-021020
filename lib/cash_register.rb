require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :price, :items
  
  def initialize
    @total = 0
    @discount = discount
    @price = price
    @items = []
  end
  
end

