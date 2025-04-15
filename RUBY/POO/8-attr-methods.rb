class Game
  attr_writer :price # Apenas escrita
  attr_reader :multiplayer, :versions # Apenas leitura
  attr_accessor :name, :genre # Leitura e Escrita

  def initialize
    # Variável de Instância
    @name = "Pes"
    @genre = "Esporte"
    @multiplayer = true
    @versions = [2018, 2019, 2020]
    @price = 100
  end

  def to_s
    "#{@name}-#{@genre}-#{@multiplayer}-#{@versions}"
  end
end

game = Game.new
p game.name
game.name = "Resident Evil"
p game.name
game.genre = "Suspense"
p game.genre
p game.price = "100"
