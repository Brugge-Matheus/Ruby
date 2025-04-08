puts Math.sqrt(4)
puts Math.sin(90)
puts Math::PI

# Calcular a area de um circulo
def calculate_area(raio)
  return Math::PI * raio ** 2
end

def calcular_perimeter(raio)
  return 2 * Math::PI * raio ** 2
end

circle_area = calculate_area(30)
circle_perimeter = calcular_perimeter(30)

puts circle_area, circle_perimeter