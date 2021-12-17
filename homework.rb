class Stack
    
    attr_reader :stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack.push(el)
      el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end

  class Queue 
    
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end
    def peek
        @queue[-1]
      end

end

class Map

    def initialize
        @map = []
    end

    def set(key, value)
        pair_index = @map.index { |pair| pair[0] == key }
        if pair_index
            @map[pair_index][1] = value
        else
        @map << [key,value]
        end
        value
    end

    def get(key)
        @map.each {|pair| return pair[1] if key == pair[0]}
        return nil
    end

    def delete(key)
    index = nil
    @map.each_with_index {|pair,i| index = i if key == pair[0]}
    @map.delete_at(index)
    end

    def show
        @map.each {|pair| puts "#{pair[0]} => #{pair[1]} "}
    end
end 