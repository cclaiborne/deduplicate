class Node
  attr_accessor :data, :nexxt, :back

  def initialize(data = nil, nexxt = nil, back = nil)
    @data = data if nexxt.nil? && back.nil?
    @nexxt = nexxt
    @back = back
  end
end

class List
  def initialize
    @head = Node.new()
  end

  def add(data)
    temp = Node.new(data)
    current = @head
    while current.nexxt != nil
      current = current.nexxt
    end
      current.nexxt = temp;
      temp.back = @current;
  end

  def delete(n)
    current = @head
    i = 0
    while ((current.nexxt != nil) && (i < n))
      current = current.nexxt
      i = i + 1
    end
      puts "deleting " + current.nexxt.data.to_s
      temp, temp2 = current
      current = current.nexxt
      temp.nexxt = current.nexxt
      # temp = temp.nexxt
      # temp.back = temp2
      # puts  "points to the previous" + temp.back.data.to_s
  end

  def remove_duplicates
    h = Hash.new()
    current = @head
    while current.nexxt != nil  && current.nexxt.nexxt != nil
      if h.has_key?(current.nexxt.data)
        current.nexxt = current.nexxt.nexxt
      else
        h[current.nexxt.data] = true
      end
      current = current.nexxt
      #puts current.data.to_s + " " + h[current.data]
    end
  end

  def print_nodes
    current = @head
    while current.nexxt != nil
      puts current.data.to_s
      current = current.nexxt
    end
  end
end

@list = List.new
10.times do
  @list.add((rand(10)))
end

@list.print_nodes
puts "remove the duplicates:"
@list.remove_duplicates
@list.print_nodes



