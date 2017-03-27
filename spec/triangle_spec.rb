require ('rspec')
require ('triangle')

describe(Triangle) do
  describe("#equilateral?") do
    it("returns false when all sides of the triangle are not equal") do
      test_triangle = Triangle.new(6, 6, 8)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true when all sides of the triangle are equal") do
      test_triangle = Triangle.new(6, 6, 6)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns true when two sides of the triangle are equal") do
      test_triangle = Triangle.new(7, 7, 9)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns true when none of the sides of the triangle are equal") do
      test_triangle = Triangle.new(8, 7, 9)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end
end
