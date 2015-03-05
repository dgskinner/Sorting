def merge_sort (array)
  return array if array.length < 2
  middle = array.length / 2
  left = array[0...middle]
  right = array[middle..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge (arr1, arr2)
  merged = []
  until (arr1.empty? || arr2.empty?)
    if arr1[0] < arr2[0]
      merged << arr1.shift
    else
      merged << arr2.shift
    end
  end
  
  merged + arr1 + arr2
end