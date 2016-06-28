if number_array.length == 13
  number_word.concat(singles.fetch(number_array[0]) + ' trillion ')
  number_array.shift()
end
4.times() do
  counter = 3
  while counter > 0
    if counter == 3
      number_word.concat(triples.fetch(number_array[0]))
      number_array.shift()
    elsif counter == 2
      if (number_array[0] != 1)
        number_word.concat(doubles.fetch(number_array[0]))
        number_array.shift()
      else
        if number_array.length == 11
          number_word.concat(teens.fetch(number_array[1]) + ' billion ')
        elsif number_array.length == 8
          number_word.concat(teens.fetch(number_array[1]) + ' million ')
        elsif number_array.length == 5
          number_word.concat(teens.fetch(number_array[1]) + ' thousand ')
        end
        number_array.shift()
        number_array.shift()
      end
    elsif counter == 1
      if number_array.length == 10
        number_word.concat(singles.fetch(number_array[0]) + ' billion ')
      elsif number_array.length == 7
        number_word.concat(singles.fetch(number_array[0]) + ' million ')
      elsif number_array.length == 4
        number_word.concat(singles.fetch(number_array[0]) + ' thousand ')
      end
      number_array.shift()
    end
    counter -= 1
  end
end
