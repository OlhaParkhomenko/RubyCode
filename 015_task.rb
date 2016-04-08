class FactorialException < ArgumentError
end

def factorial(n)
   
  raise FactorialException.new if n<0
  
  n>1? n*factorial(n-1) :1

end

puts factorial(0)
puts factorial(3)
puts factorial(-4)