class Animal
  attr_accessor :race, :category

  def initialize(race, category)
    @race = race
    @category = category
  end

  def sound
    "Algum som"
  end
end

class Lion < Animal
  def initialize(race, category, name)
    super(race, category)
    @name = name
  end

  def sound
    "#{super}, Rawr"
  end

  def walk
    "Walking..."
  end
end

lion = Lion.new("Siberian Lion", "Felin", "Carlos")

puts lion.sound
puts lion.walk
puts lion.race
