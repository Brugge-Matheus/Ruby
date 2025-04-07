puts 'Digite um número:'
num1 = gets.chomp.to_i

puts 'Digite outro número:'
num2 = gets.chomp.to_i
print "\n"

# Operadores aritmeticos
sum = num1 + num2
subt = num1 - num2
mult = num1 * num2
div = num1 / num2
mod = num1 % num2
exp = num1 ** num2

#puts sum, subt, mult, div, mod, exp

# Operadores de atribuição
num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 *= 1 # num1 = num1 * 1
num1 /= 1 # num1 = num1 / 1

# Operadores de atribuição paralela
a, b = 1, 2
b, a = a, b

puts a, b

# Operadores de comparação
bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
diff = num1 != num2
bigger_equal = num1 >= num2
smaller_equal = num1 <= num2

puts bigger, smaller, equal, bigger_equal, smaller_equal

# Operadores lógicos
puts ((1 > 5) and (5 < 6))
puts ((1 > 5) && (5 < 6))

puts ((1 > 5) or (5 < 6))
puts ((1 > 5) || (5 < 6))

# Operadors especiais
print (1..10).to_a # Tranforma os valores em array usando o intervalo definido
print ('a'..'d').to_a 

# Precendencia dos operadorse
puts 3 + 5 + 2
puts (3 + 5) * 2

# Operador de binary left shift
name = ''
name << 'Fulano' # Incrementa na variavel name o valor definido
name << 'Siclano'
puts name


