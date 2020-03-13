require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :price, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end
  
  def add_item(goods_purchased, price, quantity = 1)
    @price = price
    @total += price * quantity
    quantity.times do
      @items << goods_purchased

    else
      @items << goods_purchased
    end
  end
  
  def apply_discount
    if @discount > 0
      @discounted_amount = (price * discount)/100
      @total -= @discounted_amount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
      
  def items
    @items
  end
  
  def void_last_transaction
    binding.pry
    @total -= @price
  end
  
end

