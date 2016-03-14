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

# Write a method to sort an array of strings so that all the anagrams are next to each other.
Within Enumerable class is group_by method
Within Hash class is values method
  values returns an array populated with values from hash #{a: "cars", b: "star"}.values --> ["car", "star"]
  # group_by { |obj| block } → a_hash click to toggle source
  # group_by → an_enumerator
  # Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.

#DIVIDE AND CONQUER
#use this technique for a sorting algorithm whose worst-case running time is much less than that of insertion sort.



