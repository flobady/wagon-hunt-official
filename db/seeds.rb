# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

florian = User.create!(email: "flobady@yahoo.fr" , password: "testtest")
claire = User.create!(email: "claire@yahoo.fr" , password: "testtest")

Product.create!(user: florian, name: "Kudoz", url: "http://kudoz.com", tagline: "Tinder for job search", category: "tech")
Product.create!(user: claire, name: "uSlide", url: "http://uslide.com", tagline: "Youtube sucks for education", category: "education")
Product.create!(user: florian, name: "MedPics", url: "http://medpics.com", tagline: "Share your diagnostics", category: "education")




Message.destroy_all
Message.create!(author: "Bob", content:"Est-ce que tout va bien?")
Message.create!(author: "John", content:"C'est ça qu'on veut")
Message.create!(author: "Jack", content:"C'est désiré")
Message.create!(author: "Edward", content:"On l'a obtenu")
Message.create!(author: "Marty", content:"Ca a été voulu")
