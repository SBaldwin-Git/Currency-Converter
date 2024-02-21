# Main Module

## Similar to import in JavaScript
require_relative "data_handler"
require_relative "exchange_rate_handler"
require "date"

module CurrencyExchange
  ## Method to calculate the rate
  def self.rate(date, from_currency, to_currency)
    # Check if from_currency is "EUR"
    # Commented out for future reference
    # unless from_currency == "EUR"
    #   raise StandardError, "Sorry, the app currently only supports information on euros (EUR)."
    # end

    ## If the date is a Date object, convert it to a string
    date_str = ::Date === date ? date.strftime("%Y-%m-%d") : date

    ## Create a new instance of DataHandler
    data_handler = DataHandler.new

    ## Create a new instance of ExchangeRateHandler
    ## Include the from currency as a parameter as for now it is only used to store EUR
    exchange_rate_handler = ExchangeRateHandler.new(data_handler, from_currency)

    ## Call the get_rate method from ExchangeRateHandler
    ## Pass both from_currency and to_currency
    exchange_rate_handler.get_rate(date_str, to_currency)
  end
end
