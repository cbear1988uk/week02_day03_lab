require('minitest/autorun')
require('minitest/rg')
require_relative('../Pub')
require_relative('../Customer')
require_relative('../Drink')

class TestPub < MiniTest::Test

  def setup
    @customer1 = Customer.new("Larry", 100, 42, 80)
    @customer2 = Customer.new("Harry", 50, 16, 40)

    @drink1 = Drink.new("Whiskey", 3, 40)
    @drink2 = Drink.new("Beer", 2, 5)
    @drink3 = Drink.new("Wine", 5, 12)

    @pub = Pub.new("The Red Lion",
      [@drink1, @drink2, @drink3], 1000)

  end

  def test_does_pub_have_a_name
    assert_equal("The Red Lion", @pub.name)
  end

  def test_does_pub_have_drinks
    assert_equal(3, @pub.count_drinks)
  end

  def test_does_pub_have_cash
    assert_equal(1000, @pub.count_cash)
  end

  def test_add_cash_to_pub
    @pub.add_cash(5)
    assert_equal(1005, @pub.count_cash)
  end

  def test_can_customer_buy_drink
    @pub.add_cash(5)
    @customer1.remove_cash(5)
    @customer1.raise_alcohol(10)
    assert_equal(1005, @pub.count_cash)
    assert_equal(95, @customer1.cash_count)
    assert_equal(90, @customer1.drunkenness)
  end

  def test_pub_checks_above_age
    assert_equal("Have a drink!", @pub.check_age(18))
  end

  def test_pub_checks_under_age
    assert_equal("You're not being served!", @pub.check_age(16))
  end

  def test_is_customer_too_drunk
    assert_equal("I'm cutting you off!", @pub.checks_drunkenness(90))
  end

  def test_if_customer_is_sober
    assert_equal("Keep drinking", @pub.checks_drunkenness(40))
  end


end
