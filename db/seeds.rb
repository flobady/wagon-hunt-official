# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Product.create!(name: "Kudoz", url: "http://kudoz.com", tagline: "Tinder for job search")
Product.create!(name: "uSlide", url: "http://uslide.com", tagline: "Youtube sucks for education")
Product.create!(name: "MedPics", url: "http://medpics.com", tagline: "Share your diagnostics")

Message.destroy_all
Message.create!(author: "Bob", content:"Est-ce que tout va bien?")
Message.create!(author: "John", content:"C'est ça qu'on veut")
Message.create!(author: "Jack", content:"C'est désiré")
Message.create!(author: "Edward", content:"On l'a obtenu")
Message.create!(author: "Marty", content:"Ca a été voulu")
