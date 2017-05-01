class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

# Starting with:
# 12 --> 99 --> 37 --> nil
# push(12) creates new node @data (value =12, @data = nil)
# next --> push(99) creates new node @data (value= 99, @data = (12, @data = nil) )
# next --> push (37) creates new node @data (value= 37, @data = (99, @data = (12, @data = nil )))  === [37 | -]->[99 | -]->[12 | -]->[nil]
# next --> push(nil) breaks loop

# each time push is called @data becomes the reference to the node that was pushed previously
# this process effectively reverses the linked list

# @data = LinkedListNode.new(37, LinkedListNode.new(99, LinkedListNode.new(12, nil)))
#                            ^           ^          ^            ^         ^
#                          node1     next_node    node2      next_node   node3
#                           37          -->        99           -->       12 --> nil


class Stack
  #allows reverse_list method to reference data
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    #creates new node and uses @data to reference the next/previous node recursively
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    #sets value = to the top value of the Stack
    value = @data.value
    #pops top node
    @data = @data.next_node

    value
  end

end

def reverse_list(list)
  # build the stack
  stack = Stack.new
  # loops through each node in linked list
  while list
    stack.push(list.value)
    list = list.next_node
  end
  #returns the stack (original linked list in reverse order)
  stack.data

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

#builds up the linked list node by node
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(44, node3)

print_values(node4)
puts "-----------------------------"
revlist = reverse_list(node4)

print_values(revlist)
