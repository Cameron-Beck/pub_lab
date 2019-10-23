require ("minitest/autorun")
require ("minitest/rg")

require_relative("../food.rb")
require_relative("../customer.rb")


class TestFood < MiniTest::Test


  def test_has_attr
    burger = Food.new("burger", 5)
    assert_equal("burger", burger.name)
    assert_equal(5, burger.price)
  end


end
