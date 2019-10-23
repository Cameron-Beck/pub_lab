require ("minitest/autorun")
require ("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../food.rb")
require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Cameron", 500, 69, 0)
    @customer2 = Customer.new("Aresky", 500, 69, 0)

    @pub = Pub.new("4042", 2000, @stock)

    @drink1 = Drink.new("Jack Daniels", 6, 0.4)
    @drink2 = Drink.new("Smirnoff", 5, 0.4)
    @drink3 = Drink.new("Famous Grouse", 7, 0.4)

    # @stock = [@drink1, @drink2, @drink3]
    @stock = {
      @drink1 = 3,
      @drink2 = 2,
      @drink3 = 4,
    }
  end



end
