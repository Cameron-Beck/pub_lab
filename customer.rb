class Customer

  attr_accessor :name, :wallet, :age, :drunkness_level


  def initialize(name, wallet, age, drunkness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness_level = drunkness_level
  end

  def buy_drink(pub, drink)
      @wallet -= drink.price
      pub.till += drink.price
      # pub.stock[:drink] -= 1
      @drunkness_level += 1
  end

end
