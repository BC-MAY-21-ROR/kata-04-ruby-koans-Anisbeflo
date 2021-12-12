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
  a,b,c = [a,b,c].sort
  raise TriangleError if a<=0 || a+b<=c
  a==b ? lado1=true : lado1=false
  a==c ? lado2=true : lado2=false
  b==c ? lado3=true : lado3=false
  lado1==true && lado2==true ? :equilateral :
  lado1==true || lado2==true || lado3==true ? :isosceles : :scalene
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
