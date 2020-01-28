class CashRegister 
  attr_accessor :discount, :item, :last_transaction, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0.99 
  end 
  
  def add_item(cost, name, number = 1)
    self.total = cost * number
    @items << name
  end
  
  def add_item_2(cost, name, number = 1)
    self.total = cost * number

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items 
  # (self).items!?
  # returns an array containing all items that have been added
  end
  
  def void_last_transaction
  # (cash_register.total).to eq(0.99) 
  end 
  
end 

tester = CashRegister.new 
tester.add_item(4, "carrots", 4)


  

