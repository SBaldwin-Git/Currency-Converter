require "json"

## Class to handle data loading
class DataHandler
  ## Method to load data from a file
  def load_data(file_path)
    ## begin is like try in javascript
    begin
      json_data = File.read(file_path)
      data_object = JSON.parse(json_data)
      return data_object
      ## rescue is like catch in javascript
    rescue StandardError => e
      return nil
    end
  end
end
