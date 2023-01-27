module MyEnumerable
  def any?
    each { |item| return true if yield(item) }
    false
  end
end

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def any(&block)
    @list.any(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
puts(list)
