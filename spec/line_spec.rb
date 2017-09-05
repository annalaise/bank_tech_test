describe Line do
  subject(:line) { described_class.new(transaction_deposit) }

  context '#initialize' do
    it 'should accept a transaction upon initializing' do
      expect(line.transaction).to be_truthy
    end
  end

  context '#create' do
    it 'should create a new line from the transaction' do
      expect(line.create).to eq "10/01/2012 || 1000  || || 1000"
    end
  end

end
