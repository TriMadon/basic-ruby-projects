def bubble_sort(arr)
  sorted = false
  i = 0
  until sorted
    j = 0
    sorted = true
    until j == arr.length - 1 - i
      if arr[j + 1] < arr[j]
        arr[j + 1], arr[j] = arr[j], arr[j + 1]
        sorted = false
      end
      j += 1
    end
    i += 1
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0,2,2,3,4,78]
