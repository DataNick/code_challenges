class Person
  attr_reader :age
  def initialize(age)
    @age = age
  end
end
jack = Person.new(25)
maria = Person.new(33)
lisa = Person.new(54)
mick = Person.new(56)

puts [maria.age,jack.age,mick.age,lisa.age].sort


def binarySearch(array, target)
  for i in array
    if array[i] == target
      return "Target: #{target} is at index #{i}"
    elsif array[i] < target
      i = i + 1
    else array[i] > target
      max = i - 1
    end
  end
end

#merge sort
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

#Quick sort

class QuickSort
  def sort(to_sort, index_of_pivot = 0, right_index = to_sort.length - 1)
    old_right_index = right_index
    left_index = index_of_pivot
  # stop the recursion if nothing to sort
    if left_index >= right_index then
      return to_sort
    end
  # partition operation
  # move both indexes towards the center until they cross over # when left index finds an element greater than pivot and
  # right index finds an element smaller than pivot swap them
  while left_index < right_index
    while to_sort[left_index] <= to_sort[index_of_pivot] and
      left_index < to_sort.length - 1
      left_index = left_index + 1
    end
    right_index = right_index - 1 until to_sort[right_index] <= t to_sort[index_of_pivot]
  # swap both elements
    if left_index < right_index
      to_sort[left_index], to_sort[right_index] = t to_sort[right_index], to_sort[left_index]
    end
  end
  # swap pivot
  to_sort[index_of_pivot], to_sort[right_index] = t to_sort[right_index], to_sort[index_of_pivot]
  # recursively sort the sub arrays
  sort(to_sort, index_of_pivot, right_index - 1) sort(to_sort, left_index, old_right_index)
  return to_sort
  end
end

#selection sort
class SelectionSort
  def sort(to_sort)
    for index in 0..(to_sort.length - 2)
    #select the first element as the temporary minimum
      index_of_minimum = index
      # iterate over all other elements to find the minimum
      for inner_index in index..(to_sort.length - 1)
        if to_sort[inner_index] < to_sort[index_of_minimum]
          index_of_minimum = inner_index
        end
      end
      if index_of_minimum != index
        to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
      end
    end
    return to_sort
  end
end

#insertion sort
def sort_in_place(to_sort)#in ascending order
  for index in 1..(to_sort.length - 1) #going from second index to last index of array
    for inner_index in 0..(index - 1)
      if to_sort[inner_index] >= to_sort[index] #on first loop, compare first and second element
      to_sort.insert(inner_index, to_sort[index])
      to_sort.delete_at(index + 1)
      end
    end
  end
  return to_sort
end

def sort_in_place(to_sort)#in descending order
  for index in 1..(to_sort.length - 1) #going from second index to last index of array
    for inner_index in 0..(index - 1)
      if to_sort[inner_index] <= to_sort[index] #on first loop, compare first and second element - descending
      to_sort.insert(inner_index, to_sort[index])
      to_sort.delete_at(index + 1)
      end
    end
  end
  return to_sort
end

#INSERTION-SORT(A)
A = [5, 2, 4, 6, 1, 3]
for j = 2 to A.length
  key = A[j]
  #insert A[j] into the sorted sequence A[1..j-1]
  i = j - 1
  while i > 0 and A[i] > keys
    A[i + 1] = A[i]
    i = i - 1
  A[i + 1] = key
#insert(position,value)

# Write a method to sort an array of strings so that all the anagrams are next to each other.
Within Enumerable class is group_by method
Within Hash class is values method
  values returns an array populated with values from hash #{a: "cars", b: "star"}.values --> ["car", "star"]
  # group_by { |obj| block } → a_hash click to toggle source
  # group_by → an_enumerator
  # Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.
def anagram(array)
  return array.group_by{|word| word.chars.sort}.values
end

#DIVIDE AND CONQUER
#use this technique for a sorting algorithm whose worst-case running time is much less than that of insertion sort.



