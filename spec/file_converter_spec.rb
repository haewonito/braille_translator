require 'rspec'
require './lib/file_converter'
require './lib/dictionary_writer'


RSpec.describe FileConverter do

  it 'exists' do
    input = 'message.txt'
    output = 'braille.txt'
    file_converter = FileConverter.new(input, output)

    expect(file_converter).to be_a FileConverter
  end

  it 'reads and writes' do
    input = 'message.txt'
    output = 'braille.txt'
    file_converter = FileConverter.new(input, output)

    expect(file_converter.input_text).to_not be nil

    output_file = File.open(output, 'r')
    output_text = output_file.read.chomp
    output_file.close
    expect(output_text).to_not be nil
  end

  it 'translates a word' do
    input = 'test_message_short.txt'
    output = 'test_braille_short.txt'
    file_converter = FileConverter.new(input, output)
    expected = "0.00000.0.\n..0.0.0..0\n..0.0.0...\n"

    expect(file_converter.input_text).to eq("apple")
    expect(file_converter.translated_text).to eq(expected)
  end

  it 'translates sentences' do
    input = 'test_message_long.txt'
    output = 'test_braille_long.txt'
    file_converter = FileConverter.new(input, output)

    expect(file_converter.translated_text).to_not be nil
  end
end
