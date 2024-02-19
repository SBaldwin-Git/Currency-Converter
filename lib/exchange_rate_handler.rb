require_relative "data_handler"

class ExchangeRateHandler
  def initialize(data_handler, from_currency)
    @data_handler = data_handler
    @base_currency = from_currency
  end

  def get_rate(date, to_currency)
    data = @data_handler.load_data(File.join(__dir__, "..", "data", "eurofxref-hist-90d.json"))

    if data && data[date] && data[date].key?(to_currency)
      return data[date][to_currency].to_f
    else
      raise StandardError, "Currency not found"
    end
  end
end
