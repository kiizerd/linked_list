class LinkedList

  attr_accessor :head, :tail

  def initialize(head)
    @head = head
    @tail = head
  end

  def append(value)    # adds a new node containing value to the end of the list    
    if value.class == Node
      @tail.pointer = value
      @tail = value
    else
      node = Node.new(value)
      @tail.pointer = node
      @tail = node
    end
  end

  def prepend(value)   # adds a new node containing value to the start of the list
    if value.class == Node
      value.pointer = @head
      @head = value
    else
      node = Node.new(value)
      node.pointer = @head
      @head = node
    end
  end

  def size             # returns the total number of nodes in the list 
    i = 1
    current = @head
    until current.pointer.nil?
      current = current.pointer
      i += 1
    end
    i
  end

  def at(index)        # returns the node at the given index
    i = 0
    current = @head
    until i == index
      current = current.pointer
      i += 1
    end
    current
  end

  def pop              # removes the last element from the list
    current = @head
    if current != @tail
      until current.pointer == @tail
        current = current.pointer
      end
      popped = @tail
      current.pointer = nil
      @tail = current
      return popped
    else
      return 'Head popped, list empty'
    end
  end

  def contains?(value) # returns true if the passed in value is in the list and otherwise returns false
    current = @head
    if current.val != value
      until current.pointer.nil?
        current = current.pointer
        return true if current.val == value
      end
    else
      return true
    end
    return false
  end
  
  def find(value)      # returns index of the node containing value, or nil if not found
    i = 0
    current = @head
    if current.val != value
      until current.pointer.nil?
        current = current.pointer
        i += 1
        return i if current.val == value
      end
      return 'not found'
    else
      return i
    end
  end

  def to_s             # Represent your LinkedList objects as strings,
                       # so you can print them out and preview them in the console.
                       # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    str = []
    current = @head
    str << "( #{current.val} ) -> "
    until current.pointer.nil?
      current = current.pointer
      str << "( #{current.val} ) -> "
    end
    str << 'nil'
    str.join
  end

  ## EXTRA ##

  def insert_at(value, index)
    value = Node.new(value) if value.class != Node
    if index == 0
      self.prepend(value)
      return
    end
    i = 0
    current = @head
    until i == index - 1
      return 'error no record matching index' if current.pointer.nil?
      i += 1
      current = current.pointer
    end
    value.pointer = current.pointer
    current.pointer = value
  end

  def remove_at(index)
    if index == 0
      removed = @head
      @head = @head.pointer
      return removed
    end
    i = 0
    current = @head
    until i == index - 1
      return 'error no record matching index' if current.pointer.nil?
      i += 1
      current = current.pointer
    end
    removed = current.pointer
    current.pointer = current.pointer.pointer
    return removed
  end
end
