class Calculator

  def add numbers
    return "Please pass string as input!" unless numbers.is_a?String
    delimiters = [',', '\n', /\n/]
    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end