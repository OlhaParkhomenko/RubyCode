array =Array.new(10) { |i| rand(100) }
p array
minimum = array.min
maximum = array.max
sum=0
array.each do |i|
  sum+=i
end
average = sum/10
puts "minimum=#{minimum}, maximum=#{maximum}, average=#{average}"