# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "John", password: "Hi") 

r1 = Recipe.create(title: "Pizza", instructions: "Something", minutes_to_complete: 19, user_id: 1)
r1 = Recipe.create(title: "test", instructions: "tester", minutes_to_complete: 19, user_id: 1)