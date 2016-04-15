fileStrings = IO.readlines("pyf.svg")

fileStrings.each{|i| 
  if i =~ /\s+d="/
    i.gsub!(/\s+d="/,"")
    @value = i.gsub!(/"/,"").split(/\s/)   
  end  
}
p @value

