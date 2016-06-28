require('pry')

class Fixnum
  define_method(:numbers_to_words) do
    singles = {
      9 => 'nine',
      8 => 'eight',
      7 => 'seven',
      6 => 'six',
      5 => 'five',
      4 => 'four',
      3 => 'three',
      2 => 'two',
      1 => 'one'
    }
    teens = {
      9 => "nineteen",
      8 => "eighteen",
      7 => "seventeen",
      6 => "sixteen",
      5 => "fifteen",
      4 => "fourteen",
      3 => "thirteen",
      2 => "twelve",
      1 => "eleven",
      0 => "ten"
    }
    doubles = {
      0 => '',
      2 => 'twenty-',
      3 => 'thirty-',
      4 => 'forty-',
      5 => 'fifty-',
      6 => 'sixty-',
      7 => 'seventy-',
      8 => 'eighty-',
      9 => 'ninety-'
    }
    triples = {
      1 => 'one hundred and ',
      2 => 'two hundred and ',
      3 => 'three hundred and ',
      4 => 'four hundred and ',
      5 => 'five hundred and ',
      6 => 'six hundred and ',
      7 => 'seven hundred and ',
      8 => 'eight hundred and ',
      9 => 'nine hundred and '
    }
    number_word = ''
    number_string = self.to_s
    number_array_strings = number_string.split('')
    number_array = []
    number_array_strings.each() do |letter|
      number_array.push(letter.to_i)
    end
    while number_array.length > 0
      if number_array.length == 13
        number_word.concat(singles.fetch(number_array[0]) + ' trillion ')
        number_array.shift()
      elsif number_array.length == 12
        number_word.concat(triples.fetch(number_array[0]))
        number_array.shift()
      elsif (number_array.length == 11)
        if (number_array[0] != 1)
          number_word.concat(doubles.fetch(number_array[0]))
          number_array.shift()
        else
          number_word.concat(teens.fetch(number_array[1]) + ' billion ')
          number_array.shift()
          number_array.shift()
        end
      elsif number_array.length == 10
        number_word.concat(singles.fetch(number_array[0]) + ' billion ')
        number_array.shift()
      elsif number_array.length == 9
        number_word.concat(triples.fetch(number_array[0]))
        number_array.shift()
      elsif (number_array.length == 8)
        if (number_array[0] != 1)
          number_word.concat(doubles.fetch(number_array[0]))
          number_array.shift()
        else
          number_word.concat(teens.fetch(number_array[1]) + ' million ')
          number_array.shift()
          number_array.shift()
        end
      elsif number_array.length == 7
        number_word.concat(singles.fetch(number_array[0]) + ' million ')
        number_array.shift()
      elsif number_array.length == 6
        number_word.concat(triples.fetch(number_array[0]))
        number_array.shift()
      elsif (number_array.length == 5)
        if (number_array[0] != 1)
          number_word.concat(doubles.fetch(number_array[0]))
          number_array.shift()
        else
          number_word.concat(teens.fetch(number_array[1]) + ' thousand ')
          number_array.shift()
          number_array.shift()
        end
      elsif number_array.length == 4
        number_word.concat(singles.fetch(number_array[0]) + ' thousand ')
        number_array.shift()
      elsif number_array.length == 3
        number_word.concat(triples.fetch(number_array[0]))
        number_array.shift()
      elsif (number_array.length == 2)
        if (number_array[0] != 1)
          number_word.concat(doubles.fetch(number_array[0]))
          number_array.shift()
        else
          number_word.concat(teens.fetch(number_array[1]))
          number_array.shift()
          number_array.shift()
        end
      elsif (number_array.length == 1)
        number_word.concat(singles.fetch(number_array[0]))
        number_array.shift()
      end
    end

    number_word
  end
end




puts 817617410892.numbers_to_words()
puts 345.numbers_to_words()
puts 5234.numbers_to_words()
puts 111111111111.numbers_to_words()
