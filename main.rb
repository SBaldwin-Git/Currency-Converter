# Similar to import in JavaScript
require_relative "lib/currency_exchange"

# Entry point method
def main
  # Example date, from_currency, and to_currency
  date = Date.new(2018, 12, 11)
  from_currency = "GBP"
  to_currency = "USD"

  begin
    # Calling the rate method from the CurrencyExchange module
    result = CurrencyExchange.rate(date, from_currency, to_currency)

    # Print the calculated exchange rate
    puts "The exchange rate is: #{result}"
  rescue StandardError => e
    # Print an error message if an exception is raised
    puts "Error: #{e.message}"
  end
end

# Call the main method
main
