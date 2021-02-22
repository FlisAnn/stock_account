class Stock
  attr_accessor :quantity

  def initialize
    @quantity = 0
  end

  def deliver(amount, account)
    case 
    when quantity > account.balance
      return
    else
      @quantity += amount
      account.balance = account.balance + amount
      { status: true, message: 'success', amount: amount }
      
    end
  end

  # def sale(amount)
  #   @qauntity -= amount
  # end
end