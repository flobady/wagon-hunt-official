# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Upvote.destroy_all
Product.destroy_all
User.destroy_all
Message.destroy_all

florian = User.create!(email: "flobady@yahoo.fr" , password: "testtest")
claire = User.create!(email: "claire@yahoo.fr" , password: "testtest")

kudoz = Product.create!(user: florian, name: "Kudoz", url: "http://kudoz.com", tagline: "Tinder for job search", category: "tech")
Product.create!(user: claire, name: "uSlide", url: "http://uslide.com", tagline: "Youtube sucks for education", category: "education")
Product.create!(user: florian, name: "MedPics", url: "http://medpics.com", tagline: "Share your diagnostics", category: "education")
le_wagon = Product.create!(user: florian, name: "Le wagon", url: "http://lewagon.com", tagline: "Learn code", category: "education")

kudoz.upvotes.create! user: florian
kudoz.upvotes.create! user: claire
le_wagon.upvotes.create! user: florian

Message.create!(user: florian, content: "voulu et obtenu", product: kudoz)
