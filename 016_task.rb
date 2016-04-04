def factorial(n)
  if n<0 
   return "Value is invalid"
  end
  if n>1
    mult=1 
    i=2
    while i<=n do
      mult*=i
      i+=1
    end
    mult
  else return "Value=1"
  end  

end

puts factorial(-4)
puts factorial(0)
puts factorial(1)
puts factorial(5)