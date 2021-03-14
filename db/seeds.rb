# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

dog = Pet.new({ name: 'Pedro', age: 2, color: '#000', description: 'Doguinho lindo', animal_type: 'dog', vaccination: true, castration: true, is_adopted: true, size: 'medium' })
dog.save!

cat = Pet.new({ name: 'Nilce', age: 2, color: '#000', description: 'Gatinho lindo', animal_type: 'cat', vaccination: true, castration: true, is_adopted: true })
cat.save!