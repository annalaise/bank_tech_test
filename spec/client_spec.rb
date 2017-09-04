describe Client do

  let(:client) { Client.create }

  it 'should create a client' do
    expect(client).to exist
  end

end
