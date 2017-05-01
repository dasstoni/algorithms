class Image
  attr_accessor :image

  def initialize(image)
    self.image = image
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
        blur(xi, yi)
      end
  end

  def blur(row, column)
    #checks to make sure the 1's aren't on the edge and then changes the adjacent 0's to 1's
    if row-1 >= 0
      image[row-1][column] = 1
    end
    if row+1 <= image.length
      image[row+1][column] = 1
    end

    if column-1 >= 0
      image[row][column-1] = 1
    end
    len = image[0]
    if column+1 <= len.length
      image[row][column+1] = 1
    end

  end

end

image = Image.new(
[
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [1, 0, 1, 0]
]
)

puts "Before Blur:"
image.output_image

image.coordinates
puts "After Blur:"
image.output_image
