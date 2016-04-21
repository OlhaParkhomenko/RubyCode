def find_quantity(text)
  text_array = text.downcase.split(/[, \.?!\n]+/)
  text_array.inject(hash_words = Hash.new{ 0 }){|result, i|
    result[i] += 1
    result
    }

  hash_words.each{|key, value|
    hash_words[key] = value*100/(hash_words.size)
  }  
  p hash_words

  hash_words.each{|key, value|
    hash_words[key] = '*'*value
  }
  
  array = hash_words.sort_by{|key, value| value.size}.reverse.flatten

  i = 0
  while i < 40
    p "#{array[i]} #{array[i+1].size}% #{array[i+1]}"
    i += 2
    break if i>array.length-1
  end 

end

find_quantity("Hello, hello, how are you? I am fine, thank you and what about you?")
find_quantity(" Values are guiding standards that act as a compass for how people behave. 
  This is true for members in a business or in a family. When standards are clear, 
  the family will not only weather a storm, it will grow stronger because of it.
  Smart businesses make decisions with values up front; families should do the same.

    If a family believes that generosity is high on its list of values, 
    its mission statement should say that members want to share their wealth. 
    Then, the family should develop a strategy for giving to a cause they find important.
")