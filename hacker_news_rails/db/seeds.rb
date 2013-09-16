# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do
  User.create(username: Faker::Name.name, password: Faker::Lorem.word, about: Faker::Lorem.paragraph(2))
end

10.times do
  Post.create(title: Faker::Lorem.sentence, url: 'https://www.google.com', user_id: rand(1..5))
end

30.times do
  Comment.create(content: Faker::Lorem.paragraph(3), user_id: rand(1..5), post_id: rand(1..10))
end
