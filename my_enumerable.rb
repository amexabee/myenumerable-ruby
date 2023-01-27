module MyEnumerable
  def all?
    @list.each do |e|
      return false unless yield e # sending current e to block
      # return false unless yield is true
    end
    true # if yield true send true
  end

  def any?
    @list.each do |e|
      return true if yield e # sending current e to block
      # return true if yield is true
    end
    false # else it is false
  end

  def filter
    result = []
    @list.each do |e|
      result << e if yield e
      # send e if yield is true {|e| e.even?}
    end
    result # send result in array
  end
end
