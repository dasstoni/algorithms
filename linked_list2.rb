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

# 12 --> 99 --> 37 --> nil
# nil <-- 12 <--99 <-- 37

# node3.next_node = nil
# node2.next_node = node3
# node1.next_node = node2

def reverse_list(list, previous=nil)
  start = list.next_node
  list.next_node = previous
  if start
    reverse_list(start, list)
  else
    list
  end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# node1.next_node = node3

print_values(node3)

revlist = reverse_list(node3)
print revlist
print_values(revlist)
