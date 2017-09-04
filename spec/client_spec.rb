describe Client do

  let(:client) { Client.new }

  it 'should create a client' do
    expect(client).to be_truthy
  end

  it 'should have a starting balance of £0' do
    expect(client.balance).to equal 0
  end

end
