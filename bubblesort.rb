def bubble_sort (array)
  (array.length - 2).downto(0).each do |i|
    sorted = true
    (0..i).each do |j|
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
        sorted = false
      end
    end
    break if sorted
  end
  
  array
end

a = [3,5,4,3,6,7,8,1,2,9,0]

bubble_sort(a)

p a