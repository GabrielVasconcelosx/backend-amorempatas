# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dog = Pet.new({ name: 'Pedro', age: 2, color: '#000', description: 'Doguinho lindo', animal_type: 'dog', vaccination: true, castration: true, is_adopted: true })
dog.save!