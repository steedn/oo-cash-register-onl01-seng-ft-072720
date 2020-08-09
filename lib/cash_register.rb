require "pry"

class  CashRegister

  attr_accessor :total, :discount, :items

  def initialize(f = nil)
    @discount = f
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = nil)
    quantity.times do
      @items << item
    end
    if quantity ==  nil
    @total += price
  else
    @total += (price*quantity)
  end
  end

  def apply_discount
    if @discount != nil
    new_disc = @discount.to_f / 100
    new_total = @total - @total*new_disc
    @total = new_total
    "After the discount, the total comes to $#{@total.to_i}."
    # binding.pry
  else
    "There is no discount to apply."
  end
  end

  def items
    @items
  end
end
