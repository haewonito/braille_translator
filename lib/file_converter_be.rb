require './lib/dictionary_reader'

class FileConverterBE

  attr_reader :input_text, :output_text, :input_add, :output_add, :dictionary, :translated_text

  def initialize(input_add, output_add)
    @input_add  = input_add
    @output_add = output_add
    @dictionary = DictionaryReader.new
    read
    translate
    write
  end

  def read
    @input_file = File.open(@input_add, 'r')
    @input_text = @input_file.read.chomp
    @input_file.close
  end

  def translate_setup

    split_braille_array = @input_text.split("\n")
    stop_at = split_braille_array.length - 1

    braille_line1 = []
    braille_line2 = []
    braille_line3 = []

    (0..stop_at).step(3) do |index|
      braille_line1 << split_braille_array[index]
      braille_line2 << split_braille_array[index+1]
      braille_line3 << split_braille_array[index+2]
    end

    @braille1 = braille_line1.join
    @braille2 = braille_line2.join
    @braille3 = braille_line3.join

  end

  def translate
    translate_setup
    hash = @dictionary.hash
    translated_array = []

    (0..@braille1.length-1).step(2) do |index|
      key_array = [@braille1[index..(index+1)], @braille2[index..(index+1)], @braille3[index..(index+1)]]
      translated_array << hash[key_array]
    end
    @translated_text = translated_array.join
  end

  def write
    File.write(output_add, @translated_text)
    char_count = @input_text.length/6

    puts "Created #{@output_add} containing #{char_count} characters."
  end
end
