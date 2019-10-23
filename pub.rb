class Pub

 attr_accessor :name, :stock, :till

 def initialize(name, till, stock)
   @name = name
   @till = till
   @stock = stock
 end

 def reduce_stock(drink)
   @stock.each{ |drink| drink -= 1 if drink == drink }
 end


end
