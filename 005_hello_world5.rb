class Greeter

	def hello(name = nil) 
		puts "Hello, #{name ? name : "world" }!"
	end

end

greeting1 = Greeter.new
greeting1.hello
greeting1.hello('Olga')
greeting1.hello('John')