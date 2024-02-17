RSpec.describe CurrencyExchange do
  describe '.rate' do
    it 'returns the exchange rate for valid input' do
      expect(CurrencyExchange.rate('2024-02-18', 'USD', 'GBP')).to eq(0.79)
    end
  end
end
