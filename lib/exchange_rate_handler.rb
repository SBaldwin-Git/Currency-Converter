require_relative "data_handler"

class ExchangeRateHandler
  def initialize(data_handler)
    # Initialize with a DataHandler instance to handle data loading
    # OOP
    @data_handler = data_handler
  end

  def get_rate(date, from_currency, to_currency)
    # Load the data from the file
    # The file path is declared here so it can be easily changed in the future
    data = @data_handler.load_data("../data/eurofxref-hist-90d.json")

    # Check if the data exists
    # Check if the date exists within that data
    if data && data[date]
      # Check if both from_currency and to_currency exist for the given date
      if data[date][from_currency] && data[date][to_currency]
        # Calculate and return the exchange rate
        return data[date][to_currency] / data[date][from_currency]
      else
        # Raise an error if either from_currency or to_currency is not found
        raise StandardError, "Currency not found"
      end
    else
      # Raise an error if the date is not found
      raise StandardError, "Date not found"
    end
  end
end
