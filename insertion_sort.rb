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