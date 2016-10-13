class Statement

  HEADER = "date || credit || debit || balance"
  attr_reader :account

  def initialize(account = Account.new)
    @account = account
  end

  def print
    puts HEADER
    transactions = @account.history.reverse
    transactions.each do | transaction |
       puts transaction
    end
  end

end
