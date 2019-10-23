require ("minitest/autorun")
require ("minitest/rg")

require_relative("../pub.rb")
# require_relative("../drink.rb")
# require_relative("../food.rb")
# require_relative("../customer.rb")



class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("4042", 2000, "empty")
  end

  def test_has_attr
    assert_equal("4042", @pub.name)
    assert_equal(2000, @pub.till)
    assert_equal("empty", @pub.stock)
  end

end
