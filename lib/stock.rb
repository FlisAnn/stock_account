class Stock
  attr_accessor :quantity

  def initialize
    @quantity = 0
  end

  def deliver(amount)
    @quantity +=amount
  end
end