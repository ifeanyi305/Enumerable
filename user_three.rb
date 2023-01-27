module MyEnumerable
  def filter
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def filter
    @list.filter {|item| yield item}
  end
end

list = MyList.new([1, 2, 3, 4])
