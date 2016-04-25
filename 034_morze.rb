module Transformation
  
  hash_table_morze = Hash.new{A => ".-", B =>"-..." , C => "-.-.", D => "-..", E => ".", F => "..-.", 
      G => "--.", H => "....", I => "..", J => ".---", K => "-.-", L => ".-..", 
      M => "--", N => "-.", O => "---", P => ".--.", Q => "--.-", R => ".-.", S => "...",
      T => "-", U => "..-", V => "...-", W => ".--", X => "-..-", Y => "-.--", Z => "--..",
  }
  
  hash_table_english = hash_table_morze.invert
  
  def transformation_eng_morze(str)
    
    str.upcase!.each_char{|ch| ch.sub(hash_table_morze.fetch(ch))}
     
  end

  def transformation_morze_eng(array)
    raise ("Invalid data") unless array.class == Array 
  
    array.each{|elem| elem.sub(hash_table_english.fetch(elem))}
    array.join(',')  

  end

end


class Morze

  include Transformation
  
end

morze = Morze.new
p morze.transformation_eng_morze("abc")