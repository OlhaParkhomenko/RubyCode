class Greeter

	def hello(name = nil) 
	 @hello = name==nil ? 'Hello world' : "Hello, #{name}!"
	 puts @hello
	end

end

greeting1 = Greeter.new
greeting1.hello
greeting1.hello('Olga')
greeting1.hello('John')