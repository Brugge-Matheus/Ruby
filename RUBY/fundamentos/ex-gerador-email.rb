puts 'Digite seu primeiro nome:'
firstName = gets.chomp.to_str

puts 'Digite seu segundo nome:'
lastName = gets.chomp.to_str

puts 'Digite o nome da sua emprsa:'
company = gets.chomp.to_str

email = "#{firstName.downcase}.#{lastName.downcase}@#{company.downcase}.com"

email2 = ''
email2 << firstName
email2 << '.'
email2 << lastName.downcase.split.join('.')
email2 << '@'
email2 << company.downcase.split.join('.')
email2 << '.com'

puts email, email2