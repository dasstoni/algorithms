class Shoe
  attr_accessor :size, :brand

  def initialize(size, brand)
    @size = size
    @brand = brand
  end

end

shoe = Shoe.new(10.5, 'Nike')
puts shoe.size, shoe.brand
