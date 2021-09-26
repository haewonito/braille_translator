class FileConverter

  attr_reader :input_text, :output_text

  def initialize(input, output)
    @input  = input
    @output = output
    read
    write
  end

  def read
    input_file = File.open(@input, 'r')
    @input_text = input_file.read.chomp
    input_file.close
  end

  def write
    output_file = File.open(@output, 'w')
    output_file.write(@input_text)
    output_file.close
    char_count = @input_text.length * 6

    puts "Created #{@output} containing #{char_count} characters."

    output_file = File.open(@output, 'r')
    @output_text = output_file.read.chomp
    output_file.close
  end


end
