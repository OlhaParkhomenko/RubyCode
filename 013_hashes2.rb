require 'pp'

array =[]
names =['John', 'Jake', 'Olga', 'Stas', 'Alex', 'Nina', 'Dima',
      'Paul', 'Sophie', 'Tanya']
lastnames =['Bond', 'Ivanov', 'Ivanova', 'Sidorov', 'Sidorova',
      'Shevchenko', 'Boyko', 'Melnik', 'Slon', 'Fesenko']

def arrayOutput (array)
  number = 1  
  array.each {|i| 
  puts "#{number} #{i[:lastname]} #{i[:name]} #{i[:age]} years old"
  number+=1}
end  

30.times do  
    array << {name: names[rand(names.count-1)], lastname: lastnames[rand(lastnames.count-1)], 
              age: rand(10..20)} 
end

arrayOutput(array)

puts "Sorted array"
sorted = array.sort {|a, b| 
  if a[:lastname] == b[:lastname]
    a[:name] <=>b[:name]
  else 
    a[:lastname] <=> b[:lastname]
  end  
}

arrayOutput(sorted)