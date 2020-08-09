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
  end
end
