class Chopper
  def chop(position, array)
    array.each_with_index do |element, index|
      return index if element == position
    end

    -1
  end

  def sum(_array)
    'vacio'
  end
end
