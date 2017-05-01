
class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def depth_first_iterative(node, value)
  
end

def depth_first(node, value)
  # puts node.payload
  return node if node.payload == value
  node.children.each do |child|
    next_node = depth_first(child, value)
    if next_node != nil
      return next_node
    end
  end
  return nil
end

def breadth_first(node, value)
  queue = []
  queue << node

  while !queue.empty?
    first = queue.shift
    # puts first.payload
    return first if first.payload == value
    first.children.each do |child|
      queue << child
    end
  end

  return nil
end


# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])

puts depth_first(trunk, 11).payload
puts breadth_first(trunk, 11).payload
