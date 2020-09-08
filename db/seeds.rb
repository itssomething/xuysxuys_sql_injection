# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |n|
  User.create!(
    email: "user_#{n}@email.com",
    password: "123456",
    name: "User #{n}",
    role: "student"
  )
end

User.create!(email: "admin@email.com", name: "Admin", role: "admin")
