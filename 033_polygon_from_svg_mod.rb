require "./029_polygon.rb"
require "./030_2_file.rb"
require "./031_polygon_from_svg.rb"
require "./032_polygon_from_svg_str.rb"

class Polygon

  def self.polygon_from_svg_path(input_data)
    if input_data.class == Array
      Polygon.polygon_from_svg_path_elements(input_data)
    elsif input_data.class == String
      Polygon.polygon_from_svg_path_str(input_data)
    else
      raise("Data is invalid")
    end       
  end

end

p Polygon.polygon_from_svg_path([["M", "1863.0115,749.40627"], ["L", "1863.0115,748.10024"],
  ["C", "1852.5619,736.34445", "1859.0928,732.42592", "1861.7051,720.67013"], 
  ["C", "1864.3175,706.30212", "1846.0308,724.58866", "1846.0308,716.75144"], 
  ["C", "1847.337,707.60831",  "1839.4999,676.25963", "1843.4184,668.42241"]])
p Polygon.polygon_from_svg_path("M 1863.0115,749.40627 L 1863.0115,748.10024 
  C 1852.5619,736.34445 1859.0928,732.42592 1861.7051,720.67013 
  C 1864.3175,706.30212 1846.0308,724.58866 1846.0308,716.75144 
  C 1847.337,707.60831 1839.4999,676.25963 1843.4184,668.42241 
  C 1844.7246,668.42241 1882.6042,633.15537 1882.6042,633.15537 
  C 1885.2165,627.93049 1878.6856,621.39958 1878.6856,616.17486 
  C 1877.3794,610.94998 1876.0731,604.41907 1879.9917,599.19435")
p Polygon.polygon_from_svg_path(24586)