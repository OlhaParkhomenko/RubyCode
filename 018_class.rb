class Person

  def initialize(name, lastname, age)
    @name=name
    @lastname=lastname
    @age=age
  end

  def to_s
    "#{@name} #{@lastname} #{@age} years old"
  end
    
end

obj1=Person.new('Vasya', 'Pupkin', '13')
obj2=Person.new('Max', 'Stetsyuk', '19')

p obj1
puts obj1
p obj2 
puts obj2