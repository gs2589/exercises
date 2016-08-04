

class BinaryTreeNode

    attr_accessor :value
    attr_reader :left, :right

    def initialize(value)
        @value = value
        @left  = nil
        @right = nil
    end

    def insert_left(value)
        @left = BinaryTreeNode.new(value)
        return @left
    end

    def insert_right(value)
        @right = BinaryTreeNode.new(value)
        return @right
    end
end

tree=BinaryTreeNode.new("A")
second_left=tree.insert_left("B")
second_left.insert_left("C")
second_left.insert_right("D")
second_right=tree.insert_right("E")

# brute force would be to count the depth to each leave for all leaves
# and see if there are any depths i and k where depthi-depthk>1
# O(n) - have to visit every node to check whether its a leave or not
# can use a post order traversal because want to get to the bottom as fast as possible
# we are going to assume that single node tree is balanced


# recursive solution
def is_superbalanced(node, depth=0 ,first_depth=[])
    if (node.left==nil && node.right==nil)
        first_depth<<depth if first_depth.empty?
        return false if depth-first_depth[0]>1
        return true
    end
    
    return (is_superbalanced(node.left, depth+1, first_depth) &&
          is_superbalanced(node.right,depth+1, first_depth))
end
    

puts("this is the final answer: #{is_superbalanced(tree)}")  
#iterative solution

# breadth first to find shallowest leave then depth first
def is_superbalanced_iter(node)
  queue=[]
  first_depth=nil
  queue.unshift([node,0])
  while(!queue.empty?)
    current=queue.pop
    queue.unshift([current[0].left, current[1]+1) if current.left
    queue.unshift(current[0].right, current[1]+1) if current.right 
    if (!!current[0].left||!!current[0].right)
      first_depth||=current[1]
      return false if first_depth-current[1]>1
    end
  end
  return true
end

#depth first generally hits leaves first
def is_superbalanced_iter(node)
  queue=[]
  first_depth=nil
  queue.unshift([node,0])
  while(!queue.empty?)
    current=queue.pop
    queue.unshift([current[0].left, current[1]+1]) if current[0].left
    queue.unshift([current[0].right, current[1]+1]) if current[0].right 
    if (!current[0].left && !current[0].right)
        puts("first depth #{first_depth}")
        puts("leave value #{current[0].value}")
        puts("leave depth #{current[1]}")
      first_depth||=current[1]
      return false if current[1]-first_depth>1
    end
  end
  return true
end


    
