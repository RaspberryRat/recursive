def merge_sort(num_array)
  return num_array if num_array.length < 2

  left_side = merge_sort(num_array[0..num_array.length / 2 - 1])
  right_side = merge_sort(num_array[num_array.length / 2..])
  merge(left_side, right_side)
end

# merges two arrays that are already in sorted order
def merge(left, right, sorted = [])
  until left.empty? || right.empty? do
    left[0] < right[0] ? sorted << left.shift : sorted << right.shift
  end
  sorted + left + right
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
