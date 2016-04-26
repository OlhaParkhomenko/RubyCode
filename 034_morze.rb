module Transformation
  
  @@table_morze = {"A" => ".-", "B" =>"-..." , "C" => "-.-.", "D" => "-..", "E" => ".", 
    "F" => "..-.", "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", 
    "L" => ".-..", "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", 
    "R" => ".-.", "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", 
    "X" => "-..-", "Y" => "-.--", "Z" => "--.."
  }
  
  @@table_english = @@table_morze.invert
  
  def transformation_eng_morze(str)
    
    str.upcase.chars.map{|ch| puts @@table_morze[ch]? @@table_morze[ch] : ch }.join
     
  end

  def transformation_morze_eng(array)
    raise ("Invalid data") unless array.class == Array 
  
    p @@table_english
    array.map{|elem| puts @@table_english[elem]}.join

  end

end


class Morze

  include Transformation
  
end


morze = Morze.new
morze.transformation_eng_morze("English is language")
morze.transformation_morze_eng([".-.", "..-", "-...", "-.--"])