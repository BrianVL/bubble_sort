def bubble_sort(array)
  k = 0
  loop do
    i = 0
    swap = false
    while i < array.size.-(k+1)
      if ((array[i+1] <=> array[i]) == -1)
        array.insert(i, array.delete_at(i+1))
        swap = true
      end
      i += 1
    end
    k += 1
    break if swap == false
  end
  p array
end

bubble_sort([4,5,6,56,8,9,82,18])

# bubble sort function which accepts a block
def bubble_sort_by(array)
  k = 0
  loop do
    i = 0
    swap = false
    while i < array.size.-(k+1)
      if (yield array[i], array[i+1]) > 0
        array.insert(i, array.delete_at(i+1))
        swap = true
      end
      i += 1
    end
    k += 1
    break if swap == false
  end
  p array
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
