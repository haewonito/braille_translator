require 'rspec'
require './lib/file_converter'
require './lib/dictionary_writer'


# RSpec.describe do
  #
  # before(:each) do
  #   @input = 'message.txt'
  #   @output = 'braille.txt'
  #   # ARGV[0] = input
  #   # ARGV[1] = output
  #   @file_converter = FileConverter.new(@input, @output)
  # end
RSpec.describe FileConverter do

  subject(:converter) do
      described_class.new(input_add, output_add)
  end

  let(:input_add) { 'message.txt' }  #always put it in the context
  let(:output_add) { 'output.txt' }

  context "#read and #write" do
    it 'exists' do
      expect(converter).to be_a FileConverter
    end

  context "translate a word" do
#0x000000010a8e1650

    it 'works' do
      allow(converter).to receive(:input_text).and_return("apple")
      require 'pry'; binding.pry
      expect(converter.translated_text).to eq(".00..0.0...0.0..0....00..0.0\n00000.0...0.0.......00.00.00\n0.....0.....0.......0...0.0.\n")
    end

  end

end
  #
  # describe "#translate" do
  #   context "with things" do
  #     it "works" do
  #       expect(converter).to eq("works")
  #     end
  #   end
  # end



  # it 'exists' do
  #   expect(@file_converter).to be_a FileConverter
  # end
  #
  # xit '#read' do
  #   file = File.open(@input_file, 'w')
  #   file.write("This is just a test")
  #   file.close
  #   @file_converter.read
  #
  #   expect(@file_converter.input).to eq("This is just a test")
  # end
end
