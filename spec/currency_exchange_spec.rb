require_relative "../lib/currency_exchange.rb"

RSpec.describe CurrencyExchange do
  ## Control test for the rate method
  describe ".rate control test" do
    it "returns the exchange rate for valid input" do
      # Expect the exchange rate for a valid date and currencies to be 0.90228
      expect(CurrencyExchange.rate("2018-12-11", "EUR", "GBP")).to eq(0.90228)
    end

    ## Checks if value returned is a float
    it "returns a float" do
      # Expect the value returned for a valid date and currencies to be a Float
      expect(CurrencyExchange.rate("2018-12-10", "EUR", "USD")).to be_a(Float)
    end

    ## Checks if the method raises an error for invalid date
    it "raises an error for invalid date" do
      # Expect an error to be raised for an invalid date and currencies
      expect { CurrencyExchange.rate("2024-02-19", "EUR", "JPY") }.to raise_error(StandardError)
    end

    ## Checks if an error is raised for non-existent currencies
    it "raises an error for non-existent currencies" do
      # Expect an error to be raised for non-existent currencies
      expect { CurrencyExchange.rate("2018-12-11", "XYZ", "ABC") }.to raise_error(StandardError)
    end

    ## Checks if an error is raised for nil date
    it "raises an error for nil date" do
      # Expect an error to be raised for a nil date
      expect { CurrencyExchange.rate(nil, "EUR", "USD") }.to raise_error(StandardError)
    end
  end
end
