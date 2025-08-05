class Calculator

  def add numbers
    return "Please pass string as input!" unless numbers.is_a?String
    if numbers.start_with?"//"
      new_delimiter = numbers.split("//")[1][0]
      delimiters =  [',', '\n', /\n/,new_delimiter]
    else
      delimiters =  [',', '\n', /\n/]
    end

    numbers_list = numbers.split(Regexp.union(delimiters)).map(&:to_i).sort
    return 0 if numbers_list.empty?
    negative_nums = numbers_list.partition{|n| n.negative?}[0]
    if negative_nums.empty?
      numbers.split(Regexp.union(delimiters)).map(&:to_i).sum
    else
      "negative numbers not allowed #{negative_nums.join(",")}"
    end
  end
end