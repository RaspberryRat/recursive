arr = [4, 8, 6, 2, 1, 7, 5, 3]

def merge_sort(num_array, sorted_array = [])
  print "#{num_array}\n\n"
  return if num_array.length < 2

  merge_sort(num_array[0..num_array.length / 2 - 1])
  merge_sort(num_array[num_array.length / 2..])

  # if sorted_array > 1
  # sorted.array.length
  # if sorted_array == 1, return sorte

  sorted_array
end

merge_sort(arr)