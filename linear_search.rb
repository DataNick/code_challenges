def linearSearch(array, targetValue)
  for i in 0..(array.length)
    if array[i] === targetValue
      return "The number #{targetValue} is at index #{i}"
    end
  end
  return "#{targetValue} is not in collection"
end