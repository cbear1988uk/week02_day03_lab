require('minitest/autorun')
require('minitest/rg')
require_relative('../Food')
require_relative('../Pub')
require_relative('../Customer')

class TestFood < MiniTest::Test

  def setup
    @food1 = Food.new("Burger", 10, 20)
    @food2 = Food.new("Pizza", 15, 25)
  end

  def test_does_food_have_name
    assert_equal("Burger", @food1.name)
  end

  def test_does_food_have_price
    assert_equal(10, @food1.price)
  end

  def test_food_rejuvenation_level
    assert_equal(20, @food1.rejuvenation_level)
  end

end
