country = ['Ukraine', 'Canada', 'France', 'Germany', 'Spain']
puts country
p country
number = 1
country.each do |i|
 puts number.to_s + ' '+"#{i}"
 number+=1
end