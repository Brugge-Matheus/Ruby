class Game
  def initialize
    @name = "Matheus"
    @age = 19
  end

  def name
    @name
  end

  def age
    @age
  end
end

game1 = Game.new()

puts game1.name
puts game1.age
