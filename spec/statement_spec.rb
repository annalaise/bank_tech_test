require './lib/statement.rb'

describe Statement do
  let(:linebuilder) { double("linebuilder", :generate => linebuilder_mock )}
  subject(:statement) { described_class.new(transactions_mock, linebuilder) }

  context '#print_statement' do
    it 'prints transactions in reverse order to sdtout' do
      expect { statement.print_statement }.to output(statement_output).to_stdout
    end
  end 

end
