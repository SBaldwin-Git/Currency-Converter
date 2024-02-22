require_relative "data_handler"

class ExchangeRateHandler
  # Constructor method to initialise the ExchangeRateHandler
  def initialize(data_handler, from_currency)
    @data_handler = data_handler  # Store the data handler instance
    @base_currency = from_currency  # Store the base currency
  end

  # Method to get the exchange rate for a specific date and target currency
  def get_rate(date, to_currency)
    # Load data from the JSON file using the data handler
    data = @data_handler.load_data(File.join(__dir__, "..", "data", "eurofxref-hist-90d.json"))

    # Check if the date is not found in the data
    if data[date].nil?
      raise StandardError, "Could not find exchange rate for the given date"
    end

    # Check if currency is found in the data, unless it is EUR
    if to_currency != "EUR" && data[date][to_currency].nil?
      raise StandardError, "Currency not found"
    end

    # Check if data is successfully loaded
    if data.nil?
      raise StandardError, "Error loading data from file"
    end

    # Retrieve the exchange rates for the base and target currencies
    to_currency_rate = data[date][to_currency].to_f

    # If @base_currency is EUR, the base currency rate is 1
    if @base_currency == "EUR"
      base_currency_rate = 1
    else
      base_currency_rate = data[date][@base_currency].to_f
    end

    # Check if both exchange rates are found
    if base_currency_rate && to_currency_rate
      # Calculate the cross-currency rate
      cross_rate = to_currency_rate / base_currency_rate

      # Print information for debugging
      # puts "Base currency rate: #{base_currency_rate}"
      # puts "To currency rate: #{to_currency_rate}"
      # puts "Calculated cross rate: #{cross_rate}"

      # Return the calculated cross-currency rate
      return cross_rate
    else
      # Raise an error if the requested currencies are not found
      raise StandardError, "Currency rates not found for the given date"
    end
  end
end
