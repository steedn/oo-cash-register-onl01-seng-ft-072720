class  CashRegister

  attr_accessor :total, :discount

  def initialize(f = nil)
    @discount = f
    @total = 0
  end

  def discount(f = nil)

  end

end
