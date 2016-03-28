class Greeter

	def hello(name = nil) 
	  if name==nil 
	  	puts 'Hello world'
	   else 
	   	puts "Hello,#{name}!"
	  end 	
	end

end

greeting1 = Greeter.new
greeting1.hello
greeting1.hello('Olga')