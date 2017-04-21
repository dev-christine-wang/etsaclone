# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Item.delete_all

seller_tina = User.create!(
              first_name: 'Tina',
              last_name: 'Williams',
              email: 'tinawilliams@gmail.com',
              password: 'tinawilliams',
              seller: true
            )

seller_anna = User.create!(
              first_name: 'Anna',
              last_name: 'Calles',
              email: 'annacalles@gmail.com',
              password: 'annacalles',
              seller: true
            )

seller_joyce = User.create!(
              first_name: 'Joyce',
              last_name: 'Owens',
              email: 'joyceowens@gmail.com',
              password: 'joyceowens',
              seller: true
            )

seller_patricia = User.create!(
                  first_name: 'Patricia',
                  last_name: 'Peng',
                  email: 'patriciapeng@gmail.com',
                  password: 'patriciapeng',
                  seller: true
                )

seller_ruby = User.create!(
              first_name: 'Ruby',
              last_name: 'Anderson',
              email: 'rubyanderson@gmail.com',
              password: 'rubyanderson',
              seller: true
            )

Item.create!(
  seller_id: seller_tina.id,
  name: "MM Stacking Ring Set - S",
  description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 1 mm band.",
  price: 28,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_1.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Gold Ring CZ Diamond",
  description: "Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm cz diamond, 1 mm band.",
  price: 25,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_2.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Silver Ring CZ Diamond",
  description: "Material: Sterling silver. Size: US Ring Size 6. Other: 3mm cz diamond, 1 mm band.",
  price: 25,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_3.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "MM Stacking Ring Set - Boho",
  description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 4x6mm cz diamond, 1 mm band.",
  price: 30,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_4.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "White Gold Dual Stone Ring",
  description: "Material: Solid 14k yellow gold. Size: US Ring Size 6. Other: 3mm cv diamond, 1 mm band.",
  price: 175,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_5.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Chevron Opal Gold Ring Set",
  description: "SET OF 4. Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm opal, 1 mm band.",
  price: 175,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_6.jpg")
)

# image: File.open("app/assets/images/ring-default.jpg")
# Image.create(image: File.open("app/assets/images/ring-default.jpg"), user_id: user.id)
