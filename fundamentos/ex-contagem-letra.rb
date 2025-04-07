# Contagem de repetição de letra
puts 'Digite uma palavra:'
words = gets.chomp

count = Hash.new(0)

words.each_char do |word|
  count[word] += 1
end

puts count

# Outra forma
def letter_frequency(text)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a
  frequency = Hash.new

  text.each_char do |word|
    if chars.include?(word)
      unless frequency.include?(word)
        frequency[word] = 1
      else
        frequency[word] += 1
      end
    end
  end
  return frequency
end

puts 'Digite uma palavra:'
text = gets.chomp

response = letter_frequency(text)
puts response