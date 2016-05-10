module Morse
  
  @@table_morse = {"A" => ".-", "B" =>"-..." , "C" => "-.-.", "D" => "-..", "E" => ".", 
    "F" => "..-.", "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", 
    "L" => ".-..", "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", 
    "R" => ".-.", "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", 
    "X" => "-..-", "Y" => "-.--", "Z" => "--..",
  }
  
  @@table_english = @@table_morse.invert
  
  def self.encode(str)

    input = str.upcase.chars.map { |ch| @@table_morse[ch]? @@table_morse[ch]+'  ' : 
      ch==" "? ch+'      ': ch }.join
      
  end

  def self.decode(text_string)

    throw "ERROR!" unless text_string.class == String 
    array_string = text_string.split(/\s{6,}/)
    array_string.each {|elem|
      elem.split(/\s{1,2}/).map { |ch| @@table_english[ch]? @@table_english[ch] : ch}.join("")
    }.join("       ")
  end

end

test_string = "Bla blabla"
morse_string = Morse.encode(test_string)
puts "Morse-encoded string: #{morse_string}"
decoded_from_morse_string = Morse.decode(morse_string)
puts "decoded from morse string: #{decoded_from_morse_string}"

if test_string.upcase==decoded_from_morse_string
  puts "Everything OK"
else
  puts "Errrorrrrr!!!! initial string and resulting string are not equal!!!"
end