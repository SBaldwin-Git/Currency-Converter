# spec/data_handler_spec.rb
require_relative "../lib/data_handler"

RSpec.describe DataHandler do
  describe "class tests:" do
    it "loads data from a valid file" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/eurofxref-hist-90d.json")

      # Expect that loading data from the specified file path is not nil
      expect(data_handler.load_data(file_path)).not_to be_nil
    end

    it "handles invalid file path" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/invalid_file_path.json")

      # Expect that loading data from the specified invalid file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end

    it "handles empty file" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/empty_test.json")

      # Expect that loading data from the specified empty file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end

    it "handles nil file path" do
      data_handler = DataHandler.new

      # Expect that loading data from a nil file path is nil
      expect(data_handler.load_data(nil)).to be_nil
    end

    it "handles non-existent file" do
      data_handler = DataHandler.new
      file_path = File.join(__dir__, "../data/non_existent_file.json")

      # Expect that loading data from a non-existent file path is nil
      expect(data_handler.load_data(file_path)).to be_nil
    end
  end
end
