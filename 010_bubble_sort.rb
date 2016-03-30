def bubble_sort(array)
  j=1
  while j<array.length-1
  0.upto(array.length-2) {|i| 
    if array[i]>array[i+1] 
      array[i], array[i+1] = array[i+1], array[i]
    end 
  }
  j+=1
  end
p array
end 

array =Array.new(100) { |i| rand(100) }
p array
bubble_sort(array)
