# Blocks - se tratam de funções que tem o conteudo dinamico

# Sem parametro
def fn
  yield
end

fn { puts 'Hello World' }

# Com parametro
def fn
  yield 10, 100
  yield 20, 30 # Executa uma segunda vez a função só que com parametros diferentes
end

fn { |num, num2| puts (num + num2) * 10 }

# Lambda - Se trata de uma função anonima, que normalmente é atribuida a uma variavel
potencia = lambda { |num| num ** 2 }
puts potencia.call(2)

isEven = lambda { |num| num % 2 == 0 }
puts isEven.call(3)