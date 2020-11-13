require_relative 'linked_list.rb'
require_relative 'list_node.rb'

node_y = Node.new(7)

node_x = Node.new(6)

node_z = Node.new(9)

node_w = Node.new(3)

list = LinkedList.new(node_y)  # => #<LinkedList:0x000056152aa55ce0 @head=#<Node:0x000056152aa55d80 @val=7, @pointer=nil>, @tail=#<Node:0x000056152aa55d80 @val=7, @pointer=nil>>

list.to_s  # => "( 7 ) -> nil"

list.append(node_x)  # => #<Node:0x000056152aa55d58 @val=6, @pointer=nil>
list.append(9)  # => #<Node:0x000056152aa55470 @val=9, @pointer=nil>

list.to_s  # => "( 7 ) -> ( 6 ) -> ( 9 ) -> nil"

list.prepend(node_w)  # => #<Node:0x000056152aa55d08 @val=3, @pointer=#<Node:0x000056152aa55d80 @val=7, @pointer=#<Node:0x000056152aa55d58 @val=6, @pointer=#<Node:0x000056152aa55470 @val=9, @pointer=nil>>>>
list.prepend(11)  # => #<Node:0x000056152aa54bb0 @val=11, @pointer=#<Node:0x000056152aa55d08 @val=3, @pointer=#<Node:0x000056152aa55d80 @val=7, @pointer=#<Node:0x000056152aa55d58 @val=6, @pointer=#<Node:0x000056152aa55470 @val=9, @pointer=nil>>>>>

list.to_s  # => "( 11 ) -> ( 3 ) -> ( 7 ) -> ( 6 ) -> ( 9 ) -> nil"

list.size  # => 5

list.at(2)  # => #<Node:0x000056152aa55d80 @val=7, @pointer=#<Node:0x000056152aa55d58 @val=6, @pointer=#<Node:0x000056152aa55470 @val=9, @pointer=nil>>>

list.find(3)  # => 1
list.find(2)  # => "not found"

list.contains?(9)  # => true
list.contains?(8)  # => false

list.to_s  # => "( 11 ) -> ( 3 ) -> ( 7 ) -> ( 6 ) -> ( 9 ) -> nil"

list  # => #<LinkedList:0x000056152aa55ce0 @head=#<Node:0x000056152aa54bb0 @val=11, @pointer=#<Node:0x000056152aa55d08 @val=3, @pointer=#<Node:0x000056152aa55d80 @val=7, @pointer=#<Node:0x000056152aa55d58 @val=6, @pointer=#<Node:0x000056152aa55470 @val=9, @pointer=nil>>>>>, @tail=#<Node:0x000056152aa55470 @val=9, @pointer=nil>>
list.pop  # => #<Node:0x000056152aa55470 @val=9, @pointer=nil>

list.to_s  # => "( 11 ) -> ( 3 ) -> ( 7 ) -> ( 6 ) -> nil"

list.insert_at(Node.new(14), 4)  # => #<Node:0x000056152a8683d8 @val=14, @pointer=nil>

list.to_s  # => "( 11 ) -> ( 3 ) -> ( 7 ) -> ( 6 ) -> ( 14 ) -> nil"

list.remove_at(4)  # => #<Node:0x000056152a8683d8 @val=14, @pointer=nil>

list.to_s  # => "( 11 ) -> ( 3 ) -> ( 7 ) -> ( 6 ) -> nil"

list.head  # => #<Node:0x000056152aa54bb0 @val=11, @pointer=#<Node:0x000056152aa55d08 @val=3, @pointer=#<Node:0x000056152aa55d80 @val=7, @pointer=#<Node:0x000056152aa55d58 @val=6, @pointer=nil>>>>
