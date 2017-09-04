describe Client do
  let(:client) { described_class.new }

  it 'should create a client' do
    expect(client).to be_truthy
  end

  it 'should have a starting balance of £0' do
    expect(client.balance).to eq 0
  end

  it 'should have an empty transaction history record' do
    expect(client.transaction_history).to eq []
  end

end
