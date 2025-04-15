class Project
  attr_reader :name, :members
  attr_accessor :budget

  def initialize(name, budget)
    @name = name
    @budget = budget
    @members = ["Fulano", "Sicrano"]
  end

  def to_s
    "#{@name}-#{@budget}-#{@members}"
  end
end

project = Project.new("Teste", 900)

puts project
p project.name
p project.budget
project.budget = 25000
p project.budget
