class Array

 def bubble_sort
  array2=self.dup
  loop do
    swapped = false
    0.upto(array2.length-2) {|i|
      if array2[i]>array2[i+1]
       array2[i], array2[i+1] = array2[i+1], array2[i]
       swapped = true
      end
    }
   break unless swapped
  end
    array2
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

p array.bubble_sort

array.bubble_sort!
p array
