class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
    @sorted = []
  end

  def add_node(value, root)
    if value < root.payload
      if root.left == nil
        root.left = BinaryTree.new(value, nil, nil)
      else
        add_node(value, root.left)
      end
    elsif value >= root.payload
      if root.right == nil
        root.right = BinaryTree.new(value, nil, nil)
      else
        add_node(value, root.right)
      end
    end
  end

  def build_tree(array)
    @root = BinaryTree.new(array[0], nil, nil)
    until array.empty?
      value = array.shift
      add_node(value, @root)
    end
  end

  def sort(node = @root)
    return if node == nil
    sort(node.left)
    # puts node.payload
    @sorted << node.payload
    sort(node.right)
    return @sorted
  end
end


array = [7, 4, 9, 1, 6, 14, 10]

binary_tree = BinaryTree.new(@root, nil, nil)
binary_tree.build_tree(array)
puts binary_tree.sort
=begin
  node1 = (payload = 7, left = 4, right = 9)
  node2 = (payload = 4, left = 1, right = 6)
  node3 = (payload = 9, left = nil, right = 14)
  node4 = (payload = 1, left = nil, right = nil)
  node5 = (payload = 6, left = nil, right = nil)
  node6 = (payload = 14, left = 10, right = nil)
  node7 = (payload = 10, left = nil, right = nil)
=end
