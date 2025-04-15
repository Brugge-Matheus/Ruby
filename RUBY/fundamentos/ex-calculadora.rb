# Criando uma calculadora

sum = lambda do |num1, num2|
  num1 + num2
end

subt = lambda do |num1, num2|
  num1 - num2 
end

mult = lambda do |num1, num2|
  num1 * num2 
end

div = lambda do |num1, num2|
  num1 / num2
end

def operation(function)
  puts "Digite o número 1:"
  num1 = gets.chomp.to_i

  puts "Digite o número 2:"
  num2 = gets.chomp.to_i

  result = function.call(num1, num2)
  puts "Resultado = #{result}".center(50, "-")
end

begin
  puts "Calculadora"
  puts "a. Soma"
  puts "b. Subtração"
  puts "c. Multiplicação"
  puts "d. Divisão"
  puts "q. Fechar"
  choice = gets.chomp
  case choice
      when "a" then operation sum
      when "b" then operation subt
      when "c" then operation mult
      when "d" then operation div 
  end
end while choice != "q"