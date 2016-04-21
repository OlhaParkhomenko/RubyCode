require "./029_polygon.rb"
require "./031_polygon_from_svg.rb"

class Polygon

  def self.polygon_from_svg_path_str(string)
    array = string.scan(/([A-Z]\s[\d,.\s]+)/).flatten.map{|i| i.strip.split(" ")} 
    Polygon.polygon_from_svg_path_elements(array)
  end
  
end

string = "M 1863.0115,749.40627 L 1863.0115,748.10024
C 1852.5619,736.34445 1859.0928,732.42592 1861.7051,720.67013"

p Polygon.polygon_from_svg_path_str(string)