def quick_sort1 (array)
  return array if array.length < 2
  pivot = array[rand(array.length)]
  smallerNums = []
  biggerNums = []
  equalNums = []
  array.each do |n|
    smallerNums << n if n < pivot
    biggerNums << n if n > pivot
    equalNums << n if n == pivot
  end
  quick_sort1(smallerNums) + equalNums + quick_sort1(biggerNums)
end

def quick_sort2! (array, start = 0, length = array.length - start)
  return if length < 2
  pivot_idx = start
  ((start + 1)...(start + length)).each do |idx|  
    next if array[pivot_idx] <= array[idx]
    pivot = array[pivot_idx]
    array[pivot_idx] = array[idx]     
    array[idx] = array[pivot_idx + 1]
    array[pivot_idx + 1] = pivot  
    pivot_idx += 1               
  end
  quick_sort2!(array, start, pivot_idx - start)
  quick_sort2!(array, pivot_idx + 1, (start + length) - (pivot_idx + 1))
  return 
end