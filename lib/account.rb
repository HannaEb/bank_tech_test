class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def deposit(credit, date = Time.now.strftime("%d/%m/%Y").to_s)
    @balance += credit
    @history << [date, credit, @balance]
  end

  def withdraw(debit, date = Time.now.strftime("%d/%m/%Y").to_s)
    @balance -= debit
    @history << [date, debit, @balance]
  end

end
