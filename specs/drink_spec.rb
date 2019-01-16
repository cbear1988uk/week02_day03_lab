require('minitest/autorun')
require('minitest/rg')
require_relative('../Drink')

class TestDrink < MiniTest::Test

  def setup
    @drink1 = Drink.new("Whiskey", 3, 40)
    @drink2 = Drink.new("Beer", 2, 5)
    @drink3 = Drink.new("Wine", 5, 12)
  end

  def test_does_drink_have_a_name
    assert_equal("Whiskey", @drink1.name)
  end

  def test_does_drink_have_alcohol
    assert_equal(40, @drink1.alcohol_level)
  end

  

end
