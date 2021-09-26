# class NightWriter
#
#   attr_reader :input_lines, :output_lines, :char_count
#
#
#     input_file = File.open(ARGV[0], 'r')
#     @input_lines = input_file.read
#     input_file.close
#
#     output_file = File.open(ARGV[1], 'w')
#     output_write = output_file.write(@input_lines)
#     output_file.close
#
#
#     output_file = File.open(ARGV[1], 'r')
#     @output_lines = output_file.read
#     output_file.close
#
#     char_count = (@output_lines.length) - 1
#     puts "Created #{ARGV[1]} containing #{char_count} characters"
#   end
#
#   start
#
# end
require './lib/file_converter'

night_writer = FileConverter.new(ARGV[0], ARGV[1])
