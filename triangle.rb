# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	sides = [a,b,c]
	raise(TriangleError, "The sides have to be positive non-null values") if sides.any?{|s| s <= 0}
  raise(TriangleError, "The sides do not add up to a Triangle (too short)") if sides.any?{|s| sides.sort[0..1].inject(:+) <= sides.sort[2]}
  case 
  when sides.uniq.size == 1
  	:equilateral
  when sides.map{|s| sides.count(s)}.any?{|c| c > 1}
  	:isosceles
  else
  	:scalene
  end
end

def check_input(a,b,c)

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
