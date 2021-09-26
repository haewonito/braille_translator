class FileConverter

  attr_reader :input_text, :output_text

  def initialize(input, output)
    @input  = input
    @output = output
    read
    write
  end

  def read
    input_file = File.open(@input, "r")
    @input_text = input.read.chomp
    input.close
  end

  def write
    output_file = File.open(@output, "w")
    output.write(@input_text)
    puts "Created #{@output} containing #{@input_text.length} characters."
    output.close
  end

end
