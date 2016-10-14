require 'statement'

describe Statement do
  subject(:statement) {Statement.new}

  describe '#print' do
    it 'prints a formatted statement' do
      expect{statement.print}.to output("date || credit || debit || balance\n").to_stdout
    end
  end
end
