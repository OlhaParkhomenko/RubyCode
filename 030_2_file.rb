def read_path_from_svg(filename)

  fileStrings = IO.read(filename)
  array = fileStrings.scan(/\sd="([^"]+)"/)[0][0]
  arrayEdit = array.scan(/([A-Z]\s[\d,.\s]+)/).flatten.map{|i| i.strip.split(" ")}

end

if __FILE__ == $0
  p read_path_from_svg("pyf.svg")
end