require_relative "../lib/currency_exchange.rb"

RSpec.describe CurrencyExchange do
  ## Control test for the rate method
  describe ".rate control test" do
    it "returns the exchange rate for valid input" do
      expect(CurrencyExchange.rate("2018-12-11", "EUR", "GBP")).to eq(0.90228)
    end

    ## Checks if value returned is a float
    it "returns a float" do
      expect(CurrencyExchange.rate("2018-12-10", "EUR", "USD")).to be_a(Float)
    end

    ## Checks if the method raises an error for invalid date
    it "raises an error for invalid date" do
      expect { CurrencyExchange.rate("2024-02-19", "EUR", "JPY") }.to raise_error(StandardError)
    end
  end
end
