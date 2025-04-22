require 'faker'


10.times do
  User.create!(
    name: Faker::Name.name
  )
end


author = Author.find(1)
author2 = Author.find(2)

6.times do
  Article.create!(
    :title => Faker::Book.title,
    :content => Faker::Lorem.paragraph(sentence_count: 5),
    :author_id => [author.id, author2.id].sample
  )
end

