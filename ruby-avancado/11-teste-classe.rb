require "minitest/autorun"

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def apresentation
    "Olá, sou #{name} e tenho #{age} anos"
  end
end

class TestPersonClass < Minitest::Test
  def setup
    @person1 = Person.new("Matheus", 19)
  end

  def test_initialize
    assert_equal("Matheus", @person1.name)
    assert_equal(19, @person1.age)
  end

  def test_apresentation_method
    assert_equal("Olá, sou Matheus e tenho 19 anos", @person1.apresentation)
  end
end
