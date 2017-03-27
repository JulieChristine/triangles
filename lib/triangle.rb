require('pry')

class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:side1) do
    @side1
  end

  define_method(:side2) do
    @side2
  end

  define_method(:side3) do
    @side3
  end

  define_method(:equilateral?) do
    @side1.eql?(@side2) &&
    @side2.eql?(@side3)
  end

  define_method(:isosceles?) do
    @side1.eql?(@side2) && @side1.!=(@side3) ||
    @side1.eql?(@side3) && @side1.!=(@side2) ||
    @side2.eql?(@side3) && @side2.!=(@side1)
  end

  define_method(:scalene?) do
    (@side1.+(@side2) > @side3 ||
    @side2.+(@side3) > @side1 ||
    @side3.+(@side1) > @side2) && (@side1.!=(@side2) && @side2.!=(@side3))
  end

  define_method(:not_triangle?) do
    @side1.+(@side2) <= @side3 ||
    @side2.+(@side3) <= @side1 ||
    @side3.+(@side1) <= @side2
  end

  define_method(:type_triangle) do
    self.not_triangle?()
    self.equilateral?()
    self.isosceles?()
    self.scalene?()
    if self.not_triangle?()
      return "This is not a triangle!"
    elsif self.equilateral?()
      return "this is an equilateral triangle"
    elsif self.isosceles?()
      return "this is an isosceles traingle"
    elsif self.scalene?()
      return "this is a scalene triangle"
    else
    end 
  end
end
