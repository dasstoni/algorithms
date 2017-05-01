class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

# def floyd(tortoise, hare)
#   counter = 0
#   while tortoise != hare
#     tortoise = tortoise.next_node
#     hare = hare.next_node.next_node
    # counter += 1
#   end
#   puts "Counter: #{counter}"
#   if tortoise == hare
#     puts true
#   else
#     puts false
#   end
# end

def floyd(node)
  tortoise = node
  hare = node.next_node
  while tortoise != hare
    if hare.next_node.nil? || hare.next_node.next_node.nil?
      return false
    else
      tortoise = tortoise.next_node
      hare = hare.next_node.next_node
    end
  end
    return true
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

# hare = node3
# tortoise = node3
# hare = hare.next_node.next_node
# tortoise = tortoise.next_node
# puts hare.value, tortoise.value

# floyd(node3, node2)
puts floyd(node3)

# Tortoise: 3 ----------> 2 -----------> 1 ----------> 3
# Hare:    [3] --> 2 --> [1] --> 3 -->  [2] --> 1 --> [3]
#                                                      ^
#
