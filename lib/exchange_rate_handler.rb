require_relative "data_handler"

class ExchangeRateHandler
  # Constructor method to initialize the ExchangeRateHandler
  def initialize(data_handler, from_currency)
    @data_handler = data_handler  # Store the data handler instance
    @base_currency = from_currency  # Store the base currency, this is an OOP concept and means that the base currency is a property of the instance
  end

  # Method to get the exchange rate for a specific date and target currency
  def get_rate(date, to_currency)
    # Load data from the JSON file using the data handler
    data = @data_handler.load_data(File.join(__dir__, "..", "data", "eurofxref-hist-90d.json"))

    if data && data[date] && data[date].key?(to_currency)
      ## Return the rate as a float
      return data[date][to_currency].to_f
    else
      # Raise an error if the requested currency is not found
      raise StandardError, "Currency not found"
    end
  end
end
