describe Line do

  context '#initialize with deposit' do
    let(:line) { Line.new(transaction_deposit) }

    it 'should accept a transaction upon initializing' do
      expect(line.transaction).to be_truthy
    end
  end

  context '#generate a deposit' do
    let(:line) { Line.new(transaction_deposit) }

    it 'should create a new line from the transaction' do
      expect(line.generate).to eq "10/01/2012 || 1000  || || 1000"
    end
  end

  context '#initialize with withdrawal' do
    let(:line) { Line.new(transaction_withdrawal) }

    it 'should accept a transaction upon initializing' do
      expect(line.transaction).to be_truthy
    end
  end

  context '#generate a withdrawal' do
    let(:line) { Line.new(transaction_withdrawal) }

    it 'should create a new line from the transaction' do
      expect(line.generate).to eq "14/01/2012 || || 500 || 2500"
    end
  end


end
