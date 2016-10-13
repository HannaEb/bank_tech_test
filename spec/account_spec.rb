require 'account'

describe Account do
  subject(:account) {Account.new}

  describe '#initialize' do
    it 'has a default balance of 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'allows depositing money into the account' do
      expect{account.deposit(50)}.to change{account.balance}.by(50)
    end
  end

  describe '#withdraw' do
    it 'allows withdrawing money from the account' do
      expect{account.withdraw(20)}.to change{account.balance}.by(-20)
    end
  end

end
