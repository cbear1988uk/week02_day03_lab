require('pry')

class Customer

  attr_accessor :name, :cash, :age, :drunkenness

  def initialize(name, cash, age, drunkenness)
    @name = name
    @cash = cash
    @age = age
    @drunkenness = drunkenness
  end

  def cash_count
    return @cash
  end

  def remove_cash(amount)
    @cash -= amount
  end

  def raise_alcohol(drink)
    @drunkenness += drink
  end

  def eat_food(food)
    @drunkenness -= food
  end

end
