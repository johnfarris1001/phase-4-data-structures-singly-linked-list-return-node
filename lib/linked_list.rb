require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    if head.nil?
      return nil
    end
    count = 1
    node = head
    while node.next_node
      count += 1
      node = node.next_node
    end
    return nil if n < 1 || n > count
    node = head
    while count > n
      count -= 1
      node = node.next_node
    end
    node.value
  end
end
