# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(name: "Patrick Rothfuss", year_of_birth: 1973, nationality:"Estadunidense")
Author.create(name: "Machado de Assis", year_of_birth: 1839, nationality: "brasileiro")

Book.create(name: "O Nome do vento", year_of_publishing: 2007, author_id: 1)
Book.create(name: "O Temor do Sábio", year_of_publishing: 2011, author_id: 1)
Book.create(name: "Dom Casmurro", year_of_publishing: 1899, author_id: 2)
Book.create(name: "o alienista", year_of_publishing: 1882, author_id: 2)