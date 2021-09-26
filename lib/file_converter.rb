require './lib/dictionary_writer'

class FileConverter

  attr_reader :input_text, :output_text, :input_add, :output_add, :dictionary, :translated_text

  def initialize(input_add, output_add)

    @input_add  = input_add
    @output_add = output_add
    @dictionary = DictionaryWriter.new
    read
    translate
    write
  end

  def read
    @input_file = File.open(@input_add, 'r')
    # @input_file.close

  end

  def input_text
    @input_text ||= @input_file.read.chomp
  end

  def translate
    require 'pry'; binding.pry
    split_input = input_text.split('')
    @total_text = ''

    while split_input.length > 0

      line1 = ''
      line2 = ''
      line3 = ''
      sliced_input = split_input.slice!(0..39)

      sliced_input.each do |char|
        line1 += @dictionary.hash[char][0]
        line2 += @dictionary.hash[char][1]
        line3 += @dictionary.hash[char][2]
      end

      @total_text += line1 + "\n" + line2 + "\n" + line3 + "\n"
    end
    @translated_text = @total_text
  end


  def write

    File.write(output_add, @input_text)
    char_count = @input_text.length * 6

    puts "Created #{@output_add} containing #{char_count} characters."

  end


end
