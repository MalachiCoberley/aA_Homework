class Stack

  attr_accessor :stack

  def initialize
  @stack = []
  end

  def push(el)
    stack.push(el)
  end

  def pop
    stack.pop
  end

  def peek
    stack[-1]
  end
end

class Queue

  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.unshift(el)
  end

  def dequeue
    queue.pop
  end

  def peek
    queue[-1]
  end

end

class Map

  attr_accessor :map

  def initialize
    @map = []
  end

  def set(key, value)
    if map.any? { |set| set[0] == key }
      map.each { |set| set[1] = value if set[0] == key}
    else
      map << [key, value]
    end
  end


  def get(key)
    map.each do |set|
      return set[1] if set[0] == key
    end
    nil
  end


  def delete(key)
    map.delete_if { |set| set[0] == key }
  end

  def show
    map
  end

  #test comment

end
