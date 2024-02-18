# spec/data_handler_spec.rb
require_relative "../lib/data_handler"

RSpec.describe DataHandler do
  describe "class tests:" do
    it "loads data from a valid file" do
      data_handler = DataHandler.new

      # Use __dir__ to get the absolute path of the current directory containing this file
      # Combine it with the relative path to the data file using File.join
      file_path = File.join(__dir__, "../data/eurofxref-hist-90d.json")

      # Expect that loading data from the specified file path is not nil
      expect(data_handler.load_data(file_path)).not_to be_nil
    end

    it "handles empty file" do
      data_handler = DataHandler.new

      # Use __dir__ to get the absolute path of the current directory containing this file
      # Combine it with the relative path to the data file using File.join
      file_path = File.join(__dir__, "../data/empty_test.json")

      # Expect that loading data from the specified empty file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end
  end
end
