require "./024_task.rb"
require "./029_polygon.rb"
require "./030_2_file.rb"

class Polygon

  def self.polygon_from_svg_path_elements(array)
    @points=[]
    array.each{|step|
      case step[0]
        when 'M'
          @points << Point.point_from_string(step[1])
        when 'L'
          @points << Point.point_from_string(step[1])
        when 'C'
          @points << Point.point_from_string(step[3])
      end
    }
    p @points
  end  

end

class Point
  def self.point_from_string(str)
    @x, @y = str.split(',').map do
      |c| c.to_f
    end
  end
  Point.new(@x, @y)
end

array = read_path_from_svg("pyf.svg")
Polygon.polygon_from_svg_path_elements(array)