# Analisando se strings correspondem a um padrão
strings = ["Ola, mundo", "EBC", "Ola, OBC", "Ruby é divertido", "Ola, mundo"]
strings.each do |string|
  if string =~ /\AOla.*mundo\z/ # Começa com Ola, pode ter qualquer coisa depois e finaliza com mundo
    puts "#{string}, corresponde ao padrão"
  else
    puts "#{string}, não corresponde ao padrão"
  end
end

print "\n"

strings = ["Ruby-3.2", "Ruby-3.5", "Ruby-5.0", "Ruby-4.7", "Ruby-3.5.2"]
strings.each do |string|
  if string =~ /^Ruby.*3*\.2$/
    puts "#{string} corresponde ao padrão"
  else
    puts "#{string} não corresponde ao padrão"
  end
end
