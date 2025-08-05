class Calculator

  def add numbers
    return "Please pass string as input!" unless numbers.is_a?String

    numbers.split(",").map(&:to_i).sum
  end
end