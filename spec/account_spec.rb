describe Account do
    subject(:account) { described_class.new }

  context 'creation' do
    it 'should create an account' do
      expect(account).to be_truthy
    end
    it 'should have a starting balance of £0' do
      expect(account.balance).to eq 0
    end
    it 'should have an empty transaction history record' do
      expect(account.transaction_history).to eq []
    end
  end

  context 'adding funds' do
    before(:each) do
      account.deposit(1000)
    end
    it 'should increase the balance' do
    expect(account.balance).to eq 1000
    end
    it 'should record the transaction' do
    expect(account.transaction_history). to eq([{:date=>((Time.now).strftime("%d/%m/%Y")), :transaction=>"deposit", :amount=>1000}])
    end
  end

  context 'withdrawing funds' do
    before(:each) do
      account.deposit(1000)
      account.withdrawal(250)
    end
    it 'should decrease the balance' do
      expect(account.balance).to eq 750
    end
    it 'should record the transaction' do
      expect(account.transaction_history).to eq([{:date=>((Time.now).strftime("%d/%m/%Y")), :transaction=>"deposit", :amount=>1000}, {:date=>((Time.now).strftime("%d/%m/%Y")), :transaction=>"withdrawal", :amount=>250} ])
      p account.transaction_history
    end
  end

end
