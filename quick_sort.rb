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
#works in place
def quicksort(array, from=0, to=nil)
    if to == nil
        # Sort the whole array, by default
        to = array.count - 1
    end

    if from >= to
        # Done sorting
        return
    end

    # Take a pivot value, at the far left
    pivot = array[from]

    # Min and Max pointers
    min = from
    max = to

    # Current free slot
    free = min

    while min < max
        if free == min # Evaluate array[max]
            if array[max] <= pivot # Smaller than pivot, must move
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max # Evaluate array[min]
            if array[min] >= pivot # Bigger than pivot, must move
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Inconsistent state"
        end
    end

    array[free] = pivot

    quicksort array, from, free - 1
    quicksort array, free + 1, to
end

def mergesort(array)
    if array.count <= 1
        # Array of length 1 or less is always sorted
        return array
    end

    # Apply "Divide & Conquer" strategy

    # 1. Divide
    mid = array.count / 2
    part_a = mergesort array.slice(0, mid)
    part_b = mergesort array.slice(mid, array.count - mid)

    # 2. Conquer
    array = []
    offset_a = 0
    offset_b = 0
    while offset_a < part_a.count && offset_b < part_b.count
        a = part_a[offset_a]
        b = part_b[offset_b]

        # Take the smallest of the two, and push it on our array
        if a <= b
            array << a
            offset_a += 1
        else
            array << b
            offset_b += 1
        end
    end

    # There is at least one element left in either part_a or part_b (not both)
    while offset_a < part_a.count
        array << part_a[offset_a]
        offset_a += 1
    end

    while offset_b < part_b.count
        array << part_b[offset_b]
        offset_b += 1
    end

    return array
end