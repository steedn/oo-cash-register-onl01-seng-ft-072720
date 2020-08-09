require "pry"

class  CashRegister

  attr_accessor :total, :discount

  def initialize(f = nil)
    @discount = f
    @total = 0
  end

  def add_item(item, price, quantity = nil)
    if quantity ==  nil
    @total += price
  else
    @total += (price*quantity)
  end
  end

  def apply_discount
    new_disc = @discount.to_f / 100
    new_total = @total.to_f / new_disc
    new_total
    binding.pry
  end
end
