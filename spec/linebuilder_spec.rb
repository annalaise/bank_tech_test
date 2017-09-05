require './lib/linebuilder.rb'

describe LineBuilder do
  context '#generate' do
    let(:linebuilder) { LineBuilder.new }

    it 'should create a new array of strings' do
      expect(linebuilder.generate(transactions_mock)).to eq ["14/01/2012 || || 500 || 2500", "13/01/2012 || 2000  || || 3000", "10/01/2012 || 1000  || || 1000"]
    end

    it 'should throw an error if transactions are passed incorrectly' do
      expect { linebuilder.generate(transactions_incorrect_format) }.to raise_error("transaction error")
    end
  end
end
