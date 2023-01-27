module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end
end

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each
    @list.each {|item| yield item}
  end
end

list = MyList.new([1, 2, 3, 4])
