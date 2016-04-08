class FactorialException < ArgumentError
end

def factorial(n)
  if n<0 
    raise FactorialException.new
  end

  n>1? n*factorial(n-1) :1
end

puts factorial(0)
puts factorial(3)
puts factorial(-4)
