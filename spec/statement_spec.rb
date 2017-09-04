describe Statement do
  let(:account) { Account.new }
  subject(:statement) { described_class.new(account) }

  it 'prints the header to stdout' do
    expect { print_statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'prints transactions in reverse order' do

  end

end
