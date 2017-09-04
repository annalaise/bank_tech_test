describe Statement do
  let(:account) { double(:account) }
  subject(:statement) { described_class.new(account) }

  it 'prints the header to stdout' do
    expect { statement.print_header }.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'prints the body to stdout' do

  end

end
