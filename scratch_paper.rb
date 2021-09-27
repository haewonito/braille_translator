ruby ./lib/night_writer.rb message.txt braille.txt

ruby ./lib/night_reader.rb braille.txt original_message.txt


require 'pry'; binding.pry


rspec spec/dictionary_reader_spec.rb spec/dictionary_writer_spec.rb spec/file_converter_spec.rb spec/file_converter_be_spec.rb
