class Calculator

  def add numbers
    return "Please pass string as input!" unless numbers.is_a?String
    new_delimiter=''
    if numbers.start_with?"//"
      new_delimiter = numbers.split("//")[1][0]
    end

    delimiters = [',', '\n', /\n/,new_delimiter]
    numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
  end
end