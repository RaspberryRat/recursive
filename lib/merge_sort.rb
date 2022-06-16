def merge_sort(num_array, sorted_array = [])
  return num_array if num_array.length < 2

  left_side = merge_sort(num_array[0..num_array.length / 2 - 1])
  right_side = merge_sort(num_array[num_array.length / 2..])
  merge(left_side, right_side, sorted_array)

  sorted_array
end

# merges two arrays that are already in sorted order
def merge(left_side, right_side, sorted_array)
  until left_side.empty? && right_side.empty? do
    if left_side.empty? && right_side.empty? == false
      sorted_array.push(right_side.shift)
    elsif left_side.empty? == false && right_side.empty?
      sorted_array.push(left_side.shift)
    elsif left_side[0] < right_side[0]
      sorted_array.push(left_side.shift)
    elsif left_side[0] > right_side[0]
      sorted_array.push(right_side.shift)
    elsif left_side[0] == right_side[0]
      sorted_array.push(left_side.shift, right_side.shift)
    else
      puts "ERROR ERROR"
    end
  end
  sorted_array
end

# creates a random array to sort
def random_array
  to_sort = []

  rand(100).times do
    to_sort << rand(100)
  end
  to_sort
end

print merge_sort(random_array)
