require './lib/account.rb'

describe Account do
  subject(:account) { described_class.new }

  context '#initialize' do
    it 'should have a starting balance of £0' do
      expect(account.balance).to eq 0
    end
    it 'should have an empty transaction history record' do
      expect(account.transactions).to eq []
    end
  end

  context '#deposit' do
    before(:each) do
      add_funds
    end
    it 'should increase the balance' do
      expect(account.balance).to eq 1000
    end
    it 'should record the transaction' do
      expect(account.transactions).to eq(
      [{ date: Time.now.strftime('%d/%m/%Y'), transaction: :deposit, amount: 1000, balance: 1000 }])
    end
  end

  context '#withdrawal' do
    before(:each) do
      add_funds
      withdraw_funds
    end
    it 'should decrease the balance' do
      expect(account.balance).to eq 750
    end
    it 'should record the transaction' do
      expect(account.transactions).to eq([
        { date: Time.now.strftime('%d/%m/%Y'), transaction: :deposit, amount: 1000, balance: 1000 },
        { date: Time.now.strftime('%d/%m/%Y'), transaction: :withdrawal, amount: 250, balance: 750 }
        ])
    end
  end
end
