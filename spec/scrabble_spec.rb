require('rspec')
require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score for a letter") do
    expect("c".scrabble()).to(eq(3))
  end
  it("returns a scrabble score for a word") do
    expect("ax".scrabble()).to(eq(9))
  end
end
