# Find try catch ruby implementation
# Return the exchange rate between from_currency and to_currency on date as a float.
# Raises an exception if unable to calculate requested rate.
# Raises an exception if there is no rate for the date provided.

## Similar to import in javascript
require_relative "data_handler"

module CurrencyExchange
  ## Method to calculate the rate
  def self.rate(date, from_currency, to_currency)
    # TODO: calculate and return rate
  end

  def self.load_data
    # Create a new instance of the DataHandler class
    data_handler = DataHandler.new
    # Load the data from the file
    data_object = data_handler.load_data("data/eurofxref-hist-90d.json")
    # Console log the data
    puts "Loaded data:"
    puts data_object.inspect
  end
end
