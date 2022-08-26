class Chopper
  def chop(position, array)
    array.each_with_index do |element, index|
      return index if element == position
    end

    -1
  end

  def sum(array)
    return 'vacio' if array.size.zero?

    suma = 0
    array.each do |element|
      suma += element
    end

    return to_words(suma / 10) + ',' + to_words(suma % 10) if suma > 9

    to_words(suma)
  end

  def to_words(number)
    numbers = %w[cero uno dos tres cuatro cinco seis siete ocho nueve]
    numbers[number]
  end
end
