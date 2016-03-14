
def binarySearch(array, target)
  min = 0 #taking first index
  max = array.length-1 #taking last index
  while min <= max #if just < then if the target was the last element in array, it would be return -1
    guess = (min + max) / 2
    if array[guess] == target
      return "target acquired #{array.index(target)}"
    elsif array[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end
  return -1
end