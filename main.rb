# Similar to import in JavaScript
require_relative "lib/currency_exchange"

# Entry point method
def main
  # Example date, from_currency, and to_currency
  date = "2018-12-11"
  from_currency = "EUR"
  to_currency = "USD"

  begin
    # Calling the rate method
    result = CurrencyExchange.rate(date, from_currency, to_currency)
    puts "The exchange rate is: #{result}"
  rescue StandardError => e
    puts "Error: #{e.message}"
  end
end

# Call the main method
main
