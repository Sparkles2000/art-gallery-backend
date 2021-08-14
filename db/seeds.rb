puts "Clearing old data..."
Gallery.destroy_all
Artist.destroy_all
Artwork.destroy_all

puts "Seeding Galleries..."

c1 = Gallery.create(name: "Blue Horizon Art Gallery")
c2 = Gallery.create(name: "Orion's Gallery")
c3 = Gallery.create(name: "Mystic Art Gallery")
c4 = Gallery.create(name: "St. Louis Gallery")

puts "Seeding Artists..."

Artist.create(text: "", Gallery: c1)
Artist.create(text: "", Gallery: c2)
Artist.create(text: "", Gallery: c3)
Artist.create(text: "", Gallery: c3)
Artist.create(text: "", Gallery: c2)
Artist.create(text: "", Gallery: c1)
Artist.create(text: "", Gallery: c4)
Artist.create(text: "", Gallery: c3)

puts "Seeding Artwork..."
puts "Done!"