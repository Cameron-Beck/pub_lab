require ("minitest/autorun")
require ("minitest/rg")

require_relative("../pub.rb")
require_relative("../drink.rb")
# require_relative("../food.rb")
# require_relative("../customer.rb")



class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("4042", 2000, @stock)

    @drink1 = Drink.new("Jack Daniels", 6, 0.4)
    @drink2 = Drink.new("Smirnoff", 5, 0.4)
    @drink3 = Drink.new("Famous Grouse", 7, 0.4)

    # @stock = [@drink1, @drink2, @drink3]
    @stock = {
      @drink1 => 3,
      @drink2 => 2,
      @drink3 => 4
    }
  end

  def test_has_attr
    assert_equal("4042", @pub.name)
    assert_equal(2000, @pub.till)
    assert_equal(nil, @pub.stock)
  end

  def test_pub_stock_level
    assert_equal(3,@stock[@drink1])
  end

  def test_reduce_stock
    @pub.reduce_stock(@drink1)
    assert_equal(2, @stock[@drink1])
  end

end
