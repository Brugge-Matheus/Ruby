class Game
  def initialize()
    @name = "Valorant"
    @category = ["action", "fps"]
    @yearLauncher = 2020
  end

  def callName()
    p self
    puts @name
  end

  def information
    puts "O jogo é do genêro #{@category}"
  end
end

game1 = Game.new

puts game1.information
