# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

board_cbse = Board.create(name: 'CBSE', logo: '/logo.jpg', description: 'Central Board of Secondary Education')
grade_12 = Grade.create(name: '12', parent: board_cbse)

puts grade_12.parent_id