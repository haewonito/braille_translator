require 'rspec'
require './lib/dictionary_writer'

RSpec.describe DictionaryWriter do

  it 'exists' do
    dictionary = DictionaryWriter.new
    expect(dictionary).to be_a DictionaryWriter
  end

  it '#dictionary_arrays' do
    dictionary = DictionaryWriter.new
    expect(dictionary.alphabet).to be_a Array
    expect(dictionary.alphabet).to include ('d')
    expect(dictionary.line1).to be_a Array
  end

  it 'has hashes' do
    dictionary = DictionaryWriter.new
    expect(dictionary.hash).to be_a Hash

    expected = {
                  " "=>["..", "..", ".."],
                  "a"=>["0.", "..", ".."],
                  "b"=>["0.", "0.", ".."],
                  "c"=>["00", "..", ".."],
                  "d"=>["00", ".0", ".."],
                  "e"=>["0.", ".0", ".."],
                  "f"=>["00", "0.", ".."],
                  "g"=>["00", "00", ".."],
                  "h"=>["0.", "00", ".."],
                  "i"=>[".0", "0.", ".."],
                  "j"=>[".0", "00", ".."],
                  "k"=>["0.", "..", "0."],
                  "l"=>["0.", "0.", "0."],
                  "m"=>["00", "..", "0."],
                  "n"=>["00", ".0", "0."],
                  "o"=>["0.", ".0", "0."],
                  "p"=>["00", "0.", "0."],
                  "q"=>["00", "00", "0."],
                  "r"=>["0.", "00", "0."],
                  "s"=>[".0", "0.", "0."],
                  "t"=>[".0", "00", "0."],
                  "u"=>["0.", "..", "00"],
                  "v"=>["0.", "0.", "00"],
                  "w"=>[".0", "00", ".0"],
                  "x"=>["00", "..", "00"],
                  "y"=>["00", ".0", "00"],
                  "z"=>["0.", ".0", "00"]
                }
    expect(dictionary.hash).to eq(expected)
  end
end
