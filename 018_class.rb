class Person

  def initialize(name, lastname, age)
    @name=name
    @lastname=lastname
    @age=age
  end

  def to_s
    @name + ' ' + @lastname + ' ' + @age +' years old'
  end
    
end

obj1=Person.new('Vasya', 'Pupkin', '13')
obj2=Person.new('Max', 'Stetsyuk', '19')

puts "With p"
p obj1.to_s
p obj2.to_s

puts "With puts"
puts obj1.to_s
puts obj2.to_s