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

# first pass: reverse_list(node3)
# => sets start to node2(99) //
# => sets next node to nil //
# => calls reverse_list(node2, node 3) where node3 becomes previous

# second pass: reverse_list(node2, node3)
# => sets start to node1(37) //
# => sets next node to node3 //
# =>  calls reverse_list(node1, node2) where node2 becomes previous

# third pass: reverse_list(node1, node2)
# => sets start to nil //
# => sets next node to node2 //
# => reverse_list doesn't get called because start becomes nil so list is returned which is 37

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


print_values(node3)

revlist = reverse_list(node3)

print_values(revlist)
