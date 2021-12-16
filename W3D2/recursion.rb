

def sum_to(n)
 return 1 if n==1
 return nil if n<0
 n + sum_to(n-1)
end

def add_numbers(nums_array)
    return nil if nums_array == []
    return nums_array[0] if nums_array.length == 1
    nums_array[0] +add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
    return 1 if n == 1
    return nil if n == 0
    (n-1) * gamma_fnc(n-1)
end

def ice_cream_shop(flavors, favorite)
return false if flavors.empty?
    if flavors[0] == favorite
        return true 
    else
        ice_cream_shop(flavors[1..-1],favorite)
    end
end


def reverse(string)
    return "" if string == ""
string[-1] + reverse(string[0..-2])
end

def pascal_triangle(n)
    return [1] if n == 0
    return [1,1] if n == 1
    arr = []
    arr << pascal_row(n)
    arr << pascal_triangle(n-1)
end
def pascal_row(n)
    return [1] if n == 0
    return [1,1] if n == 1
    new_row = [1]
    last_row = pascal_row(n-1)
    (0...last_row.length-1).each do |i|
        new_row  << last_row[i] + last_row[i+1] 
    end
    new_row << 1
end

                 # 1 2 1
p pascal_triangle(4) #1 3 3 1