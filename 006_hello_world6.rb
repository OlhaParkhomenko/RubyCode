class Greeter

	def hello(name = nil, familiy_name=nil) 
	 if (name==nil || familiy_name ==nil)
	 	puts "Hello world"
	  else 
	  	puts "Hello, #{name} #{familiy_name}" 
	 end
	end

end

greeting1 = Greeter.new
greeting1.hello('James','Bond')
greeting1.hello('Olga')
greeting1.hello(ARGV[1]='Bond')
greeting1.hello