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
  
  def add_item(goods_purchased, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << goods_purchased
        counter += 1
      end
    else
      @items << goods_purchased
    end
  end
  
  def apply_discount(discount)
    if @discount > 0
      @discounted_amount = (price * discount)/100
      @total -= @discounted_amount
      puts "After the discount, the total comes to #{@total}."
    else
      puts "There is no discount to apply."
    end
  end
      
  def items
    @items
  end
  
  def void_last_transaction
    #return @total minus the total amount of the added price values of the @items array
  end
  
end

