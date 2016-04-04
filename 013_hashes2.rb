require 'pp'

array =[]
names =['John', 'Jake', 'Olga', 'Stas', 'Alex', 'Nina', 'Dima',
      'Paul', 'Sophie', 'Tanya']
lastnames =['Bond', 'Ivanov', 'Ivanova', 'Sidorov', 'Sidorova',
      'Shevchenko', 'Boyko', 'Melnik', 'Slon', 'Fesenko']

30.times do  
    array << {name: names[rand(names.count-1)], lastname: lastnames[rand(lastnames.count-1)], 
              age: rand(10..20)} 
end
number = 1  
array.each {|i| puts "#{number} " +"#{i[:name]} " + "#{i[:lastname]} " + "#{i[:age]} " +"years old"
            number+=1}
puts "Sorted array"
pp array.sort_by {|key, value| key[:lastname]}