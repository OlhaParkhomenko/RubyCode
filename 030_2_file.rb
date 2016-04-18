fileStrings = IO.read("pyf.svg")
array = fileStrings.scan(/\sd="([^"]+)"/)[0][0]
@arrayEdit = array.scan(/([A-Z]\s[\d,.\s]+)\s/).flatten.map{|i| i.strip.split(" ")}

def getArray
  @arrayEdit
end

if __FILE__ == $0
  p getArray
end