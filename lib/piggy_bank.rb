class PiggyBank
attr_accessor :total_coins

  def initialize
    @total_coins = 0
  end
  def put_coins(coin_number)
    @total_coins += coin_number

  end

  def shake()
    "cling"
  end


end
