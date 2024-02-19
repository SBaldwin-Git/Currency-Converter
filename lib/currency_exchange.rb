# Find try catch ruby implementation
# Return the exchange rate between from_currency and to_currency on date as a float.
# Raises an exception if unable to calculate requested rate.
# Raises an exception if there is no rate for the date provided.

# Main Module

## Similar to import in javascript
require_relative "data_handler"
require_relative "exchange_rate_handler"

module CurrencyExchange
  ## Method to calculate the rate
  def self.rate(date, from_currency, to_currency)

    ## Create a new instance of DataHandler
    data_handler = DataHandler.new

    ## Create a new instance of ExchangeRateHandler
    ## Include the from currency as a parameter as for now it is only used to store EUR
    exchange_rate_handler = ExchangeRateHandler.new(data_handler, from_currency)

    ## Call the get_rate method from ExchangeRateHandler
    ## For now, the from_currency is not used
    exchange_rate_handler.get_rate(date, to_currency)
  end
end
