class Node
  attr_accessor :value, :next

  def initialize(value=nil)
    @value = value
    @next = nil
  end

  def to_s
    @value || nil
  end
end

class SinglyLinkedList
  attr_accessor :head

  # Make this class support .each, .map, .inject etc.

  def initialize(first_value=nil)
    @head = Node.new(first_value)
  end

  def append(value) # Like a .push()
    new_node = Node.new(value)
    self.last.next = new_node
  end

  def prepend(value) # Like a .shift()
  end

  # Removes (and returns) the first element in the list (i.e. assigns a new @head)
  def remove() # Like a .unshift()
  end

  # Returns the node that has the input as its value, else nil.
  def find(input)
  end

  # Returns a new SLL with the nodes in reverse.
  def reverse
  end

  # Updates this SLL with the nodes in reverse.
  def reverse!
  end

  # Sticks new_node immediately after node.
  def insertAfter(node, new_node)
  end

  # Returns the node at index
  def [](index) # i.e. array style index lookup.
  end

  def last
    node = @head
    # Walk through the nodes until we find the last one (with a "next" of nil)
    while node.next
      node = node.next
    end

    node # Return the node
  end

  def length
    count = 1
    node = @head
    while node.next
      count += 1
      node = node.next
    end

    count
  end
end
