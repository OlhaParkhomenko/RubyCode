fileStrings = IO.read("pyf.svg")
array = fileStrings.scan(/\sd="([^"]+)"/)[0][0]
arrayEdit = array.scan(/([A-Z]\s[\d,.\s]+)\s/)
p arrayEdit