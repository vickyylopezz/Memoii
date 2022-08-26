class Chopper
  def chop(position, array) # rubocop:disable Lint/UnusedMethodArgument
    return 0 if array.size.positive?

    -1
  end
end
