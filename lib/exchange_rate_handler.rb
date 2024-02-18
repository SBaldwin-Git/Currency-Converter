require_relative "data_handler"

class ExchangeRateHandler

    def initialise(data_handler)
        @data_handler = data_handler
    end

    def get_rate(date, from_currency, to_currency)
        ## Load the data from the file, declared here so it can be better changed in the future
        data = @data_handler.load_data("../data/eurofxref-hist-90d.json.json")
        

    end
end