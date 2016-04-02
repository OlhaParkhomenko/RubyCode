class Array

 def bubble_sort(array)
  array2=array.dup
  loop do
    swapped = false
    0.upto(array2.length-2) {|i| 
      if array2[i]>array2[i+1] 
       array2[i], array2[i+1] = array2[i+1], array2[i]
       swapped = true
     end 
   }
  break unless swapped

 p array2
end


end  


def bubble_sort!
 loop do
  swapped = false
  0.upto(self.length-2) {|i| 
    if self[i]>self[i+1] 
     self[i], self[i+1] = self[i+1], self[i]
     swapped = true
   end 
 }
 break unless swapped
end 
self
end


end 

array = Array.new(20) { rand(100) }
p array

array.bubble_sort(array)
p array

puts array.bubble_sort!
p array