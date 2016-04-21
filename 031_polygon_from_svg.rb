require "./024_task.rb"
require "./029_polygon.rb"
require "./030_2_file.rb"

class Polygon

  def self.polygon_from_svg_path_elements(array)
    Polygon.new(array.map {|step|
      case step[0]
        when 'M'
          Point.point_from_string(step[1])
        when 'L'
          Point.point_from_string(step[1])
        when 'C'
          Point.point_from_string(step[3])
      end
      })
  end  

end

class Point

  def self.point_from_string(str)
    x, y = str.split(',').map {|c| c.to_f}
    Point.new(x, y)
  end  
  
end

if __FILE__==$0
  array = read_path_from_svg("pyf.svg")
  p Polygon.polygon_from_svg_path_elements(array)
end