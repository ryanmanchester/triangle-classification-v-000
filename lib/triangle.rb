require 'pry'
class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 == @side_2 && @side_1 == @side_3
      :equilateral
    # end
    elsif @side_2 == @side_3 || @side_1 == @side_3 || @side_1 == @side_2
      :isosceles

    elsif @side_1 != @side_2 && @side_1 != @side_3
      :scalene
   #binding.pry
    elsif @side_1 == 0 || @side_2 == 0 || @side_3 == 0
      binding.pry
      raise TriangleError

    end


  end


end

class TriangleError < StandardError
  def message
    "Not a triangle!"
  end

end
