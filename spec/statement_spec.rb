describe Statement do
  subject(:statement) { described_class.new(transactions_mock) }


  it 'prints transactions in reverse order to sdtout' do
    puts statement.print_statement
    expect { statement.print_statement }.to output(
      "date || credit || debit || balance\n14/01/2012 || || 500 || 2500\n13/01/2012 || 2000  || || 3000\n10/01/2012 || 1000  || || 1000\n").to_stdout
  end
end
