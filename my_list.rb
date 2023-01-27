require_relative './my_enumerable'

class MyList
  include MyEnumerable

  # instance variable @list
  def initialize(*list)
    @list = list
  end

  # implement a method each that yields successive members of @list
  # implicit send of &block
  def each
    @list.each
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })
# true
puts(list.any? { |e| e > 5 })
# false
puts(list.any? { |e| e == 2 })
# true
puts(list.any? { |e| e == 5 })
# false
p(list.filter(&:even?))
# [2, 4]
