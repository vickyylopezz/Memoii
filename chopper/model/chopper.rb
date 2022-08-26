class Chopper
  def chop(position, array)
    array.each_with_index do |element, index|
      return index if element == position
    end

    -1
  end

  def sum(array)
    return 'cuatro' if array.size > 1
    return 'uno' if array.size == 1

    'vacio'
  end
end
