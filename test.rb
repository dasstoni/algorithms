class Image
  attr_accessor :image, :distance

  def initialize(image, distance)
    @image = image
    @distance = distance
  end

  def output_image
    image.each {|i| puts i.join()}
  end

  def coordinates
    ones = []
    #pulls the indexes out of each spot in image and adds the coordinates with 1's to the ones array
    image.each_with_index do |x, xi|
      x.each_with_index do |y, yi|
        if y == 1
          ones << [xi,yi]
        end
      end
    end
      #loops through coordinates and sends each index to the blur method
      ones.each do |c|
        xi, yi = c
        blur(xi, yi, distance)
      end
  end

  def blur(row, column, distance)
    for n in distance
      if row != 0
        image[row-1*n][column] = 1
      end
      if row != image.length - 1
        image[row+1*n][column] = 1
      end

      if column != 0
        image[row][column-1*n] = 1
      end
      len = image[0]
      if column != len.length - 1
        image[row][column+1*n] = 1
      end
      # distance -= 1
    end
  end

end

puts "What distance would you like to blur?"
distance = gets.chomp.to_i

image = Image.new(
[
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0]
], distance
)

puts "Before Blur:"
image.output_image

image.coordinates
puts "After Blur:"
image.output_image
