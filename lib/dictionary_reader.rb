require_relative './dictionary_writer'

class DictionaryReader

  attr_reader :hash

  def initialize
    dictionary = DictionaryWriter.new
    writer_array = dictionary.hash

    @hash = writer_array.invert
  end
end
