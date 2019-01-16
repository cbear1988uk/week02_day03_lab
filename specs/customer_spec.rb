require('minitest/autorun')
require('minitest/rg')
require_relative('../Customer')
require_relative('../Food')

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Larry", 100, 42, 80)
    @customer2 = Customer.new("Harry", 50, 16, 40)

    @food1 = Food.new("Burger", 10, 20)
    @food2 = Food.new("Pizza", 15, 25)

  end

  def test_customers_name
    assert_equal("Larry", @customer1.name)
  end

  def test_customers_cash
    assert_equal(100, @customer1.cash_count)
  end

  def test_remove_cash_from_customer
    @customer1.remove_cash(5)
    assert_equal(95, @customer1.cash_count)
  end

  def test_customer_age
    assert_equal(42, @customer1.age)
  end

  def test_customer_drunk_level
    assert_equal(80, @customer1.drunkenness)
  end

  def test_raise_alcohol_level
    @customer1.raise_alcohol(10)
    assert_equal(90, @customer1.drunkenness)
  end

  def test_food_reduces_drunkennness
    @customer1.eat_food(20)
    assert_equal(60, @customer1.drunkenness)
  end

end
