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

    it 'saves the date of the deposit' do
      allow(Time).to receive(:now).and_return(Time.mktime(2016,10,16))
      account.deposit(50)
      expect(account.history).to include(['16/10/2016', 50, 50])
    end

  end

  describe '#withdraw' do
    it 'allows withdrawing money from the account' do
      expect{account.withdraw(20)}.to change{account.balance}.by(-20)
    end

    it 'saves the date of the withdrawl' do
      allow(Time).to receive(:now).and_return(Time.mktime(2016,10,16))
      account.deposit(50)
      account.withdraw(20)
      expect(account.history).to include(['16/10/2016', 20, 30])
    end
  end

end
