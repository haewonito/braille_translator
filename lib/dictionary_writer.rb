class DictionaryWriter

  attr_reader :first_line_hash, :second_line_hash, :third_line_hash

  def make_hash(key_array, value_array)
    hash = Hash.new
    count = 0

    while count < 27
      hash[key_array[count]] = value_array[count]
      count += 1
    end
    hash
  end

  def initialize
    alphabet_array = *('a'..'z')
    alphabet_array.unshift(' ')

    first_line_string = '.. 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. 00 00 0. 00 00 0. .0 .0 0. 0. .0 00 00 0.'
    second_line_string = '.. .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. .. .0 .0 0. 00 00 0. 00 .. 0. 00 .. .0 .0'
    third_line_string = '.. .. .. .. .. .. .. .. .. .. .. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 00 00 .0 00 00 00'


    first_line_array = first_line_string.split(' ')
    second_line_array = second_line_string.split(' ')
    third_line_array = third_line_string.split(' ')

    @first_line_hash = make_hash(alphabet_array, first_line_array)
    @second_line_hash = make_hash(alphabet_array, second_line_array)
    @third_line_hash = make_hash(alphabet_array, third_line_array)
  end
end
