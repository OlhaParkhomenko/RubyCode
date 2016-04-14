fileStrings = IO.readlines("pyf.svg")

fileStrings.each{|i| 
  if i =~ /\s{6}d="/
    i.gsub!(/\s{6}d="/,"")
    @value = i.gsub!(/"/,"").split(/\s/)   
  end  
}
p @value

