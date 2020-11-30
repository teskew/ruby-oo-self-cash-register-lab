
class CashRegister
    attr_accessor :total, :discount, :price, :items, :quantities
  def initialize(discount = 0)
  @total = 0
  @discount = discount
  @price = 0
  @items = []
   @last_items = []
    end
def add_item (title, price, quantities = 1 )
    
   @total += quantities * price
   quantities.times do
   @items << title
   end
   @last_items = price * quantities
  # @last_items << title
end  
   def apply_discount

      if @discount == 0
         "There is no discount to apply."   
         else

      # @discount_price = @price * @discount * 0.01
       self.total -= (total * discount * 0.01).to_i
      "After the discount, the total comes to $#{total}."
         
       end
    end
def void_last_transaction
 @total -= @last_items
  
end
end