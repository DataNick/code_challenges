#merge sort - works in a new array
def merge(first_array, second_array)
  return second_array if first_array.empty?
  return first_array if second_array.empty?
  if first_array.first <= second_array.first
    element = first_array.shift
  else
    element = second_array.shift
  end
  return [element] + merge(first_array, second_array)
end
