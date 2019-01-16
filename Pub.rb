
class Pub

  attr_accessor :name

  def initialize(name, drinks, money)
    @name = name
    @drinks = drinks
    @money = money
  end

  def count_drinks()
    return @drinks.count
  end

  def count_cash
    return @money
  end

  def add_cash(amount)
    @money += amount
  end

  def remove_cash(amount)
    @money -= amount
  end

  def check_age(customer)
    if customer >= 18
      return "Have a drink!"
    else
      return "You're not being served!"
    end
  end

  def checks_drunkenness(drunk_customer)
    if drunk_customer >= 85
      return "I'm cutting you off!"
    else drunk_customer < 85
      return "Keep drinking"
    end
  end

end
