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
  description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 1mm band.",
  price: 28,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_1.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Gold Ring CZ Diamond",
  description: "Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm cz diamond, 1mm band.",
  price: 25,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_2.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Silver Ring CZ Diamond",
  description: "Material: Sterling silver. Size: US Ring Size 6. Other: 3mm cz diamond, 1mm band.",
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
  description: "Material: Solid 14k yellow gold. Size: US Ring Size 6. Other: 3mm cv diamond, 1mm band.",
  price: 175,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_5.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "Chevron Opal Gold Ring Set",
  description: "SET OF 4. Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm opal, 1mm band.",
  price: 30,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_6.jpg")
)

Item.create!(
  seller_id: seller_tina.id,
  name: "MM Stacking Ring Set - CV",
  description: "SET OF 3. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 3mm cv diamond, 1 mm band.",
  price: 28,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_7.jpg")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Dainty Leaves Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Stones may vary slightly in shape, shade, and size.",
  price: 35,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_1.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Gold Hamsa Hand Necklace",
  description: "Material: 18k gold vermeil. Chain length: 18\". Other: Hand measures approximately 18mm x 28mm, stones may vary slightly in shape, shade, and size.",
  price: 45,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_2.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Small Drop Earrings",
  description: "Material: 14k yellow gold filled. Earrings measurement: 1\" long. Other: Stones may vary slightly in shape, shade, and size.",
  price: 28,
  category: "earrings",
  quantity: 100,
  image: File.open("app/assets/images/earrings_1.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Natural Turquoise Ring",
  description: "Material: 18k gold vermeil. Size: US Ring Size 6. Other: 3mm natural turquoise, stone may vary slightly in shape, shade, and size, 2mm band.",
  price: 56,
  category: "ring",
  quantity: 100,
  image: File.open("app/assets/images/ring_8.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Bird Feathers Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Bird and leaves measure approximately 28mm x 18mm.",
  price: 38,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_3.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Pink Chalcedony Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Stone measures approximately 20mm x 15mm, may vary slightly in shape, shade, and size.",
  price: 45,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_4.png")
)

Item.create!(
  seller_id: seller_anna.id,
  name: "Chrysoprase Lotus Flower Earrings",
  description: "Material: 18k gold vermeil. Earrings measurement: 1.5\" long. Other: Stones may vary slightly in shape, shade, and size.",
  price: 65,
  category: "earrings",
  quantity: 100,
  image: File.open("app/assets/images/earrings_2.png")
)

Item.create!(
  seller_id: seller_joyce.id,
  name: "Mini Gold Triangle Necklace",
  description: "Material: Polymer clay, gold foil, brass. Chain length: 20\". Other: Triangle measures approximately 24mm x 21mm.",
  price: 25,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_5.png")
)

Item.create!(
  seller_id: seller_joyce.id,
  name: "Gold Rhombus Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 20\". Other: Pendant measures approximately 26mm x 18mm.",
  price: 28,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_6.png")
)

Item.create!(
  seller_id: seller_joyce.id,
  name: "Gold Crystal Glass Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 20\". Other: Glass pendant measures approximately 20mm x 20mm.",
  price: 20,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_7.png")
)

Item.create!(
  seller_id: seller_joyce.id,
  name: "Turquoise Gold Necklace",
  description: "Material: 14k yellow gold filled, polymer clay, gold foil. Chain length: 18\". Other: Center piece measures approximately 20mm x 20mm.",
  price: 22,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_8.png")
)

Item.create!(
  seller_id: seller_joyce.id,
  name: "Tiny Gold Hamsa Earrings",
  description: "Material: 14k yellow gold filled. Earrings measurement: 0.75\" long. Other: Hamsa measures approximately 10mm x 8mm.",
  price: 10,
  category: "earrings",
  quantity: 100,
  image: File.open("app/assets/images/earrings_3.png")
)

Item.create!(
  seller_id: seller_patricia.id,
  name: "Dainty Rose Gold Necklace",
  description: "Material: 14k rose gold filled. Chain length: 16\". Other: Center piece measures approximately 20mm x 20mm.",
  price: 25,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_9.png")
)

Item.create!(
  seller_id: seller_patricia.id,
  name: "Dainty Turqoise Rectangle Necklace",
  description: "Material: 14k yellow gold filled. Chain length: 16\". Other: Turqoise piece measures approximately 18mm x 18mm.",
  price: 44,
  category: "necklace",
  quantity: 100,
  image: File.open("app/assets/images/necklace_10.png")
)
