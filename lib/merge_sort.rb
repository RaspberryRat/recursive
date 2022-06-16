require "pry-byebug"
arr = [4, 8, 6, 2, 1, 7, 5, 3]
arr2 = [4,8,6,2]
arr3 = [8, 4]

def merge_sort(num_array, sorted_array = [])
  return if num_array.length < 2



  left_side = num_array[0..num_array.length / 2 - 1]
  right_side = num_array[num_array.length / 2..]

  binding.pry
  merge_sort(left_side)
  merge_sort(right_side)
  merge(left_side, right_side, sorted_array)
  print "\n#{sorted_array}\n"
  
  # if sorted_array > 1
  # sorted.array.length
  # if sorted_array == 1, return sorte

  sorted_array
end


def merge(left_side, right_side, sorted_array)
  binding.pry
  until left_side.empty? && right_side.empty? do
    if left_side.empty? && right_side.empty? == false
      sorted_array.push(right_side.shift)
    elsif left_side.empty? == false && right_side.empty?
      sorted_array.push(left_side.shift)
    elsif left_side[0] < right_side[0]
      sorted_array.push(left_side.shift)
    elsif left_side[0] > right_side[0]
      sorted_array.push(right_side.shift)
    else
      puts "ERROR ERROR"
    end
  end
  sorted_array
end



# print "Arr3: #{arr3.join(", ")}\n"
# merge_sort(arr3)

print "Arr2: #{arr2.join(", ")}\n"
merge_sort(arr2)
