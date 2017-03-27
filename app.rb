require('sinatra')
  require('sinatra/reloader')
  require('./lib/triangle.rb')

  get('/') do
    erb(:index)
  end

  get('/triangle_type') do
    @side1 = (params.fetch('side1')).to_i()
    @side2 = (params.fetch('side2')).to_i()
    @side3 = (params.fetch('side3')).to_i()
    @checkTriangle = Triangle.new(@side1, @side2, @side3)
    @what_triangle = @checkTriangle.type_triangle()


    erb(:index)
  end
