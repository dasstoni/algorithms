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

# Store the current next node
# Change the next node to equal previous
# Set previous to list to store the values of the current loop
# Set list to equal current so the loop will continue until it reaches nil
# Return the value of list which is set to previous

def reverse_list(list, previous=nil)
  while list
    current = list.next_node
    list.next_node = previous
    previous = list
    list = current
  end
  list = previous
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

revlist = reverse_list(node3)

print_values(revlist)
