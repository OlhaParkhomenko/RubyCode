array =Array.new(10) { |i| rand(100) }
p array
sum=0
minimum = array[0]
maximum = array[0]
array.each do |i|
  sum+=i
  if i<minimum 
    minimum=i
  end
  if i>maximum
    maximum=i
  end  
end
average = sum/10
puts "minimum=#{minimum}, maximum=#{maximum}, average=#{average}"