require 'rspec'
require './lib/night_writer'

RSpec.describe do
  it 'Iteration 1' do
    night_writer = NightWriter.new
    expect(night_writer.testing).to eq("This works!")
  end
end
