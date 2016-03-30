user={:firstname=>"Vasya", :lastname =>"Pupkin", :age=>"22"}
p user


def hashImproved(user)
  user.each {|key, value| puts "# #{key.capitalize}: #{value}" }
end

hashImproved(user)

user[:age]="50"
puts "Hash with new value"
hashImproved (user)
