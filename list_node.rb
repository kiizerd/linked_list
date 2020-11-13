## [ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil

class Node

  attr_accessor :val, :pointer

  def initialize(val=nil, pointer=nil)
    @val = val
    @pointer = pointer
  end

end
