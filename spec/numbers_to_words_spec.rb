require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it("returns a string of words that correspond to a one digit number") do
    expect(8.numbers_to_words).to(eq('eight'))
  end

  it("returns a string of words that correspond to a two digit teens number") do
    expect(12.numbers_to_words).to(eq('twelve'))
  end

  it("returns a string of words that correspond to a two digit number") do
    expect(142.numbers_to_words).to(eq('one hundred and forty-two'))
  end

  it("returns a string of words that correspond to a three digit number") do
    expect(414.numbers_to_words).to(eq('four hundred and fourteen'))
  end

  it("returns a string of words that correspond to the numbers") do
    expect(6817617410892.numbers_to_words).to(eq('six trillion eight hundred and seventeen billion six hundred and seventeen million four hundred and ten thousand eight hundred and ninety-two'))
  end
end
