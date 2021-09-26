class DictionaryWriter

  attr_reader :hash


  def initialize
    alphabet_array = *('a'..'z')
    alphabet_array.unshift(' ')

    first_line_string = '.. 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. .0 00 00 0.'
    second_line_string = '.. .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. 00 .. .0 .0'
    third_line_string = '.. .. .. .. .. .. .. .. .. .. .. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 00 00 .0 00 00 00'


    first_line_array = first_line_string.split(' ')
    second_line_array = second_line_string.split(' ')
    third_line_array = third_line_string.split(' ')

    @hash = Hash.new
    count = 0

    while count < 27
      @hash[alphabet_array[count]] = [first_line_array[count], second_line_array[count], third_line_array[count]]
      count += 1
    end
    @hash
  end
end
