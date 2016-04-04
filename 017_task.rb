array = Array.new(10) { |i| rand(20)  }
puts "Initial array"
p array

puts "New array"
p array.map{|elem| elem**2}