class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end

    def to_s
        "#{self.value}"
    end
end


class LinkedList
    # attr_accessor :head

    def initialize
        @head = nil
        @size = 0
    end

    def append(value)
        if @head == nil
            @head = Node.new(value)
        else
            item = @head
            while item.next_node != nil
                item = item.next_node
            end
            item.next_node = Node.new(value)
        end
        @size += 1
    end

    def prepended(value)
        if @head == nil
            @head = Node.new(value)
        else
            new_node = Node.new(value)
            new_node.next_node = @head
            @head = new_node
        end

        @size += 1
    end

    def size
        puts "#{@size}"
    end

    def head
        puts "#{@head}"
    end

    def tail
        item = @head
        while item.next_node != nil
            item = item.next_node
        end
        item.value
    end

    def at(index)
        item = @head
        i = 0

        while i != index
            item = item.next_node
            i += 1
        end
        item.value
    end

    def pop
        item = @head
        while item.next_node != nil
            item = item.next_node
        end
        item = nil
        @size -= 1
    end

    def contains(value)
        item = @head
        while item.value != nil
            if item.value == value
                return true
            end
            item = item.next_node
        end
        false
    end

    def find(value)
        i = 0
        item = @head
        while item.value != nil
            if item.value == value
                return i
            end
            item = item.next_node
            i += 1
        end
        return "nil"
    end

    def to_s
        str = ""
        item = @head
        while item != nil
            str << " #{item.value} -->"
            item = item.next_node
        end
        str << " nil"
        str
    end
end



a = LinkedList.new()
a.append(2)
a.append(6)
a.prepended(9)

puts a.to_s
