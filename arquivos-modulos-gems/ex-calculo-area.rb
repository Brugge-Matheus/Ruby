module Square
  def self.area(side)
    return side * side 
  end
end

module Rectangle
  def self.area(base, width)
    return base * width
  end
end

puts Square.area(20)
puts Rectangle.area(20, 40)