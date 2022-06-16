def merge_sort(num_array)
  return num_array if num_array.length < 2

  left_side = merge_sort(num_array[0..num_array.length / 2 - 1])
  right_side = merge_sort(num_array[num_array.length / 2..])
  merge(left_side, right_side)
end

# merges two arrays that are already in sorted order
def merge(left_side, right_side, sorted_array = [])
  until left_side.empty?|| right_side.empty? do
    if left_side[0] < right_side[0]
      sorted_array << left_side.shift
    elsif
      sorted_array << right_side.shift
    end
  end
  sorted_array + left_side + right_side
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
