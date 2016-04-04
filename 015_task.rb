def factorial(n)

  if n<0 
   return "Value is invalid"
  end
  
  return n>1? n*factorial(n-1) :1
  
end

puts factorial(-4)
puts factorial(0)
puts factorial(3)
