class  CashRegister

  attr_accessor :total, :discount

  def initialize(f = nil)
    @discount = f
    @total = 0
  end

  def add_item(item, price)
    @total += price
  end
end
