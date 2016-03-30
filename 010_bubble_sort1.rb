def bubble_sort(array)
	loop do
    swapped = false
    0.upto(array.length-2) {|i| 
      if array[i]>array[i+1] 
       array[i], array[i+1] = array[i+1], array[i]
       swapped = true
      end	
    }
   break unless swapped
  end
  p array
end 

array =Array.new(100) { |i| rand(100) }
p array
bubble_sort(array)