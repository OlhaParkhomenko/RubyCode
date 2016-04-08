def factorial(n)
  raise "Value is invalid" if n<0
  
  if n>1
    mult=1 
    2.upto (n) {|i|
      mult*=i
    }
    mult
  else 
    return 1
  end  

end

puts factorial(5)
puts factorial(0)
puts factorial(1)
begin
  puts factorial(-4)
rescue
  puts "Error during factorial calculation"
end
