require "json"

class DataHandler
  ## Method to load data from a file
  def load_data(file_path)
    ## begin is like try in JavaScript
    begin
      # Read the contents of the file at the specified path
      json_data = File.read(file_path)

      # Parse the JSON data into a Ruby object
      data_object = JSON.parse(json_data)

      # Return the parsed data object
      return data_object
      ## rescue is like catch in JavaScript
    rescue StandardError => e
      # If an error occurs during reading or parsing, return nil
      return nil
    end
  end
end
