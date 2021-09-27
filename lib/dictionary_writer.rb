class DictionaryWriter

  attr_reader :hash, :alphabet, :line1


  def initialize

    dictionary_arrays

    @hash = Hash.new
    count = 0

    while count < 27
      @hash[@alphabet[count]] = [@line1[count], @line2[count], @line3[count]]
      count += 1
    end
    @hash
  end

  def dictionary_arrays
    @alphabet = *('a'..'z')
    @alphabet.unshift(' ')

    first_line_string = '.. 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. .0 00 00 0.'
    second_line_string = '.. .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. 00 .. .0 .0'
    third_line_string = '.. .. .. .. .. .. .. .. .. .. .. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 00 00 .0 00 00 00'

    @line1 = first_line_string.split(' ')
    @line2 = second_line_string.split(' ')
    @line3 = third_line_string.split(' ')
  end

end
