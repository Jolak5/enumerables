require_relative 'MyEnumerable.rb'

class MyList 
    include MyEnumerable

    def initialize(*list)
@list = list
    end

  def showList
    @list.each {|n| print n}
 end

 def call_blocks(&block)
@list.each(&block)
 end

end

list = MyList.new(1, 2, 3, 4)
list.showList

puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

p (list.filter {|e| e.even?})