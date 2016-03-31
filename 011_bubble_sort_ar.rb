def bubble_sort_ar(array)
 j=1 
  flag=true 
  while (j<array.length-1)&&(flag==true)
   mas=[] 
   0.upto(array.length-2) {|i| 
    if array[i]>array[i+1] 
     array[i], array[i+1] = array[i+1], array[i]
     mas.push(true) else mas.push(false)
    end 
  }
 j+=1
 if mas.include?(true) 
  flag=true 
else 
  flag=false
end 
end
end 