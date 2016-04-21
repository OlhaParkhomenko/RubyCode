def find_quantity(file)
  
  text = IO.read(file)
  text_array = text.downcase.split(/[, \.?!\n'\)\()]+/)
  text_array.inject(hash_words = Hash.new{ 0 }){|result, i|
    result[i] += 1
    result
    }
  p hash_words

  hash_words.each{|key, value|
    hash_words[key] = value*100/(hash_words.size)
  }  
  
  hash_words.each{|key, value|
    hash_words[key] = '*'*value
  }
  
  array = hash_words.sort_by{|key, value| value.size}.reverse.flatten

  i = 0
  while i < 40
    p "#{array[i].ljust(15)} #{(array[i+1].size.to_s + '%').ljust(4)} #{array[i+1]}"
    i += 2
    break if i>array.length-1
  end 

end

find_quantity("text.txt")
