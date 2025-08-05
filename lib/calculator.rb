class Calculator

  def add numbers
    return "Please pass string as input!" unless numbers.is_a?String

    ##preparing list of delimiters and then sorting the array after converting all elements to integer
    # when we partition the list, only if all are positive we calculate the sum.
    
    delimiters = (numbers.start_with?"//") ? [',', '\n', /\n/,numbers.split("//")[1][0]] : [',', '\n', /\n/]

    numbers_list = numbers.split(Regexp.union(delimiters)).map(&:to_i).sort
    return 0 if numbers_list.empty?
    negative_nums = numbers_list.partition{|n| n.negative?}[0]

    negative_nums.empty? ?  numbers.split(Regexp.union(delimiters)).map(&:to_i).sum :  "negative numbers not allowed #{negative_nums.join(",")}"
  end
end