class Greeter  
  def hello(name=nil)
      puts "Hello, #{name or "world"}!"
  end  
end

greeting1 = Greeter.new
greeting1.hello('Olga')
greeting1.hello