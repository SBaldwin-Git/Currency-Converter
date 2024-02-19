require_relative "../lib/exchange_rate_handler"

RSpec.describe ExchangeRateHandler do
  describe "class tests:" do
    it "loads data from a valid file" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/eurofxref-hist-90d.json")

      # Expect that loading data from the specified file path is not nil
      expect(data_handler.load_data(file_path)).not_to be_nil
    end

    it "handles invalid file path" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/invalid_file_path.json")

      # Expect that loading data from the specified invalid file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end

    it "handles empty file" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/empty_test.json")

      # Expect that loading data from the specified empty file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end

    it "checks if an error is raised for a non-existent date" do
      data_handler = DataHandler.new
      exchange_rate_handler = ExchangeRateHandler.new(data_handler, "EUR")

      # Expect an error to be raised with the message "Currency not found"
      expect { exchange_rate_handler.get_rate("2021-01-01", "USD") }.to raise_error "Currency not found"
    end

    it "checks if an error is raised for a non-existent currency" do
      data_handler = DataHandler.new
      exchange_rate_handler = ExchangeRateHandler.new(data_handler, "EUR")

      # Expect an error to be raised with the message "Currency not found"
      expect { exchange_rate_handler.get_rate("2021-01-04", "JPY") }.to raise_error "Currency not found"
    end

    it "checks if an error is raised for a non-existent currency and date" do
      data_handler = DataHandler.new
      exchange_rate_handler = ExchangeRateHandler.new(data_handler, "EUR")

      # Expect an error to be raised with the message "Currency not found"
      expect { exchange_rate_handler.get_rate("2021-01-01", "JPY") }.to raise_error "Currency not found"
    end

    it "checks if the rate is returned for a valid date and currency" do
      data_handler = DataHandler.new
      exchange_rate_handler = ExchangeRateHandler.new(data_handler, "EUR")

      # Expect the exchange rate for a valid date and currency to be 1.1667
      expect(exchange_rate_handler.get_rate("2018-09-19", "USD")).to eq 1.1667
    end
  end
end
