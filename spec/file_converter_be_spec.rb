require 'rspec'
require './lib/file_converter_be'
require './lib/dictionary_reader'

RSpec.describe FileConverterBE do
  it 'exists' do
    input = 'braille.txt'
    output = 'original_message.txt'
    file_converter = FileConverterBE.new(input, output)

    expect(file_converter).to be_a FileConverterBE
  end

  it 'reads and writes' do
    input = 'braille.txt'
    output = 'original_message.txt'
    file_converter = FileConverterBE.new(input, output)

    expect(file_converter.input_text).to_not be nil

    output_file = File.open(output, 'r')
    output_text = output_file.read.chomp
    output_file.close
    expect(output_text).to_not be nil
  end

  it 'translates a Braille word to English' do

    input = 'test_braille_short.txt'
    output = 'original_message.txt'
    file_converter = FileConverterBE.new(input, output)

    expect(file_converter.translated_text).to eq('apple')
  end

  it 'translates a long sentence to English' do

    input = 'test_braille_long.txt'
    output = 'original_message.txt'
    file_converter = FileConverterBE.new(input, output)
    expected = "this message is for testing nightwriter and nightreader for messages that are longer than forty lines"

    expect(file_converter.translated_text).to eq(expected)
  end
end
