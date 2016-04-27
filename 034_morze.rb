module Morze
  
  @@table_morze = {"A" => ".-", "B" =>"-..." , "C" => "-.-.", "D" => "-..", "E" => ".", 
    "F" => "..-.", "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", 
    "L" => ".-..", "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", 
    "R" => ".-.", "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", 
    "X" => "-..-", "Y" => "-.--", "Z" => "--..", " " => "       "
  }
  
  @@table_english = @@table_morze.invert
  
  def Morze.encode(str)
    str.upcase.chars.map { |ch| @@table_morze[ch]? @@table_morze[ch] : ch }.join
  end

  def Morze.decode(text_string)
    puts "ERROR!" unless text_string.class == String 
    p array_string = text_string.split("     ").join("/").split("  ").join("")
    #array_string.each_index{|i|
    #  if array_string[i] == /[A-Z]/ 
    #    p array_string[i]
    #  end  

    #}

  end

end

morze_encoded = Morze::encode("English is language")
#morze_decoded = Morze::decode(morze_encoded)