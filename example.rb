require './lib/account.rb'
require './lib/statement.rb'

account = Account.new
statement = Statement.new(account)

account.deposit(1000, '10/01/2012')
account.deposit(2000, '13/01/2012')
account.withdraw(500, '14/01/2012')

p statement.print
