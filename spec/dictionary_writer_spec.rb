require 'rspec'
require './lib/dictionary_writer'

RSpec.describe DictionaryWriter do

  it 'exists' do
    dictionary = DictionaryWriter.new
    expect(dictionary).to be_a DictionaryWriter
  end

  it 'has 3 hashes' do
    dictionary = DictionaryWriter.new
    expect(dictionary.second_line_hash).to be_a Hash
    expect(dictionary.third_line_hash).to be_a Hash

    expected = {
                  " "=>"..",
                  "a"=>"0.",
                  "b"=>"0.",
                  "c"=>"00",
                  "d"=>"00",
                  "e"=>"0.",
                  "f"=>"00",
                  "g"=>"00",
                  "h"=>"0.",
                  "i"=>".0",
                  "j"=>".0",
                  "k"=>"0.",
                  "l"=>"0.",
                  "m"=>"00",
                  "n"=>"00",
                  "o"=>"0.",
                  "p"=>"00",
                  "q"=>"00",
                  "r"=>"0.",
                  "s"=>".0",
                  "t"=>".0",
                  "u"=>"0.",
                  "v"=>"0.",
                  "w"=>".0",
                  "x"=>"00",
                  "y"=>"00",
                  "z"=>"0."
                }
    expect(dictionary.first_line_hash).to eq(expected)
  end
end
