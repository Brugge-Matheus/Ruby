class Game
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name=(new_name)
    @name = new_name
  end

  # def set_name(new_name)
  #   @name = new_name
  # end

  def name
    @name
  end
end

game1 = Game.new("Matheus Brugge", 19)

puts game1.name
puts game1.name = "Sarah"
# puts game1.set_name("Sarah")
