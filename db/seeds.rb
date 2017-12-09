# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Directory.destroy_all

Directory.create(name: '1', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '2', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '3', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '4', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '5', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '6', directory: "{'root': {'a': {'next': true}}}")
Directory.create(name: '7', directory: "{'root': {'a': {'next': true}}}")