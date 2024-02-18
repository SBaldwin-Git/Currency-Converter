# Find try catch ruby implementation
# Return the exchange rate between from_currency and to_currency on date as a float.
# Raises an exception if unable to calculate requested rate.
# Raises an exception if there is no rate for the date provided.

## Similar to import in javascript
require_relative "data_handler"
require_relative "exchange_rate_handler"

module CurrencyExchange
  ## Method to calculate the rate
  def self.rate(date, from_currency, to_currency)
    # TODO: calculate and return rate

    ## Create a new instance of DataHandler
    data_handler = DataHandler.new

    ## Create a new instance of ExchangeRateHandler
    exchange_rate_handler = ExchangeRateHandler.new(data_handler)

    ## Call the get_rate method from ExchangeRateHandler
    exchange_rate_handler.get_rate(date, from_currency, to_currency)
  end
end
