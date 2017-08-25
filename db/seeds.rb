# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

politicans_attributes = [
              { name: 'Angela Merkel', party:"CDU" },
              { name: 'Martin Schulz', party:"SPD" },
              { name: 'Sigmar Gabriel', party:"SPD" },
              { name: 'Frank-Walter Steinmeier', party:"SPD" },
              { name: 'Wolfgang Schäuble', party:"CDU" },
              { name: 'Helmut Kohl', party:"CDU" },
              { name: 'Willy Brandt', party:"SPD" },
              { name: 'Horst Seehofer', party:"CSU" },
              ]

politicans_attributes.each do |p|
  Politician.create!(p)
end
