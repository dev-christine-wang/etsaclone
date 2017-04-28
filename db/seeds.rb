# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Item.delete_all
Review.delete_all

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

ring_1 = Item.create!(
          seller_id: seller_tina.id,
          name: "MM Stacking Ring Set - S",
          description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 1mm band.",
          price: 28,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_1.jpg")
        )

ring_2 = Item.create!(
          seller_id: seller_tina.id,
          name: "Gold Ring CZ Diamond",
          description: "Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm cz diamond, 1mm band.",
          price: 25,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_2.jpg")
        )

ring_3 = Item.create!(
          seller_id: seller_tina.id,
          name: "Silver Ring CZ Diamond",
          description: "Material: Sterling silver. Size: US Ring Size 6. Other: 3mm cz diamond, 1mm band.",
          price: 25,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_3.jpg")
        )

ring_4 = Item.create!(
          seller_id: seller_tina.id,
          name: "MM Stacking Ring Set - Boho",
          description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 4x6mm cz diamond, 1 mm band.",
          price: 30,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_4.jpg")
        )

ring_5 = Item.create!(
          seller_id: seller_tina.id,
          name: "White Gold Dual Stone Ring",
          description: "Material: Solid 14k yellow gold. Size: US Ring Size 6. Other: 3mm cv diamond, 1mm band.",
          price: 175,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_5.jpg")
        )

ring_6 = Item.create!(
          seller_id: seller_tina.id,
          name: "Chevron Opal Gold Ring Set",
          description: "SET OF 4. Material: 14k yellow gold filled. Size: US Ring Size 6. Other: 3mm opal, 1mm band.",
          price: 30,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_6.jpg")
        )

ring_7 = Item.create!(
          seller_id: seller_tina.id,
          name: "MM Stacking Ring Set - CV",
          description: "SET OF 3. Material: 14k yellow gold filled, 14k rose gold filled, sterling silver. Size: US Ring Size 6. Other: 3mm cv diamond, 1 mm band.",
          price: 28,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_7.jpg")
        )

necklace_1 = Item.create!(
              seller_id: seller_anna.id,
              name: "Dainty Leaves Necklace",
              description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Stones may vary slightly in shape, shade, and size.",
              price: 35,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_1.png")
            )

necklace_2 = Item.create!(
              seller_id: seller_anna.id,
              name: "Gold Hamsa Hand Necklace",
              description: "Material: 18k gold vermeil. Chain length: 18\". Other: Hand measures approximately 18mm x 28mm, stones may vary slightly in shape, shade, and size.",
              price: 45,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_2.png")
            )

earrings_1 = Item.create!(
              seller_id: seller_anna.id,
              name: "Small Drop Earrings",
              description: "Material: 14k yellow gold filled. Earrings measurement: 1\" long. Other: Stones may vary slightly in shape, shade, and size.",
              price: 28,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_1.png")
            )

ring_8 = Item.create!(
          seller_id: seller_anna.id,
          name: "Natural Turquoise Ring",
          description: "Material: 18k gold vermeil. Size: US Ring Size 6. Other: 3mm natural turquoise, stone may vary slightly in shape, shade, and size, 2mm band.",
          price: 56,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_8.png")
        )

necklace_3 = Item.create!(
              seller_id: seller_anna.id,
              name: "Bird Feathers Necklace",
              description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Bird and leaves measure approximately 28mm x 18mm.",
              price: 38,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_3.png")
            )

necklace_4 = Item.create!(
              seller_id: seller_anna.id,
              name: "Pink Chalcedony Necklace",
              description: "Material: 14k yellow gold filled. Chain length: 18\". Other: Stone measures approximately 20mm x 15mm, may vary slightly in shape, shade, and size.",
              price: 45,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_4.png")
            )

earrings_2 = Item.create!(
              seller_id: seller_anna.id,
              name: "Chrysoprase Lotus Flower Earrings",
              description: "Material: 18k gold vermeil. Earrings measurement: 1.5\" long. Other: Stones may vary slightly in shape, shade, and size.",
              price: 65,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_2.png")
            )

necklace_5 = Item.create!(
              seller_id: seller_joyce.id,
              name: "Mini Gold Triangle Necklace",
              description: "Material: Polymer clay, gold foil, brass. Chain length: 20\". Other: Triangle measures approximately 24mm x 21mm.",
              price: 25,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_5.png")
            )

necklace_6 = Item.create!(
              seller_id: seller_joyce.id,
              name: "Gold Rhombus Necklace",
              description: "Material: 14k yellow gold filled. Chain length: 20\". Other: Pendant measures approximately 26mm x 18mm.",
              price: 28,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_6.png")
            )

necklace_7 = Item.create!(
              seller_id: seller_joyce.id,
              name: "Gold Crystal Glass Necklace",
              description: "Material: 14k yellow gold filled. Chain length: 20\". Other: Glass pendant measures approximately 20mm x 20mm.",
              price: 20,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_7.png")
            )

necklace_8 = Item.create!(
              seller_id: seller_joyce.id,
              name: "Turquoise Gold Necklace",
              description: "Material: 14k yellow gold filled, polymer clay, gold foil. Chain length: 18\". Other: Center piece measures approximately 20mm x 20mm.",
              price: 22,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_8.png")
            )

earrings_3 = Item.create!(
              seller_id: seller_joyce.id,
              name: "Tiny Gold Hamsa Earrings",
              description: "Material: 14k yellow gold filled. Earrings measurement: 0.75\" long. Other: Hamsa measures approximately 10mm x 8mm.",
              price: 10,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_3.png")
            )

necklace_9 = Item.create!(
              seller_id: seller_patricia.id,
              name: "Dainty Rose Gold Necklace",
              description: "Material: 14k rose gold filled. Chain length: 16\". Other: Center piece measures approximately 20mm x 20mm.",
              price: 25,
              category: "necklace",
              quantity: 100,
              image: File.open("app/assets/images/necklace_9.png")
            )

necklace_10 = Item.create!(
                seller_id: seller_patricia.id,
                name: "Dainty Turquoise Rectangle Necklace",
                description: "Material: 14k yellow gold filled. Chain length: 16\". Other: Turqoise piece measures approximately 18mm x 18mm.",
                price: 44,
                category: "necklace",
                quantity: 100,
                image: File.open("app/assets/images/necklace_10.png")
              )

earrings_4 = Item.create!(
              seller_id: seller_patricia.id,
              name: "Gold Leaf Earrings",
              description: "Material: 14k yellow gold filled. Earrings measurement: 20mm x 18mm. Other: Bar post measures 10mm x 2mm.",
              price: 15,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_4.png")
            )

earrings_5 = Item.create!(
              seller_id: seller_patricia.id,
              name: "Gold Eye Earrings",
              description: "Material: 14k yellow gold filled, cz diamond. Earrings measurement: 20mm x 12mm.",
              price: 15,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_5.png")
            )

earrings_6 = Item.create!(
              seller_id: seller_patricia.id,
              name: "Gold Turquoise Earrings",
              description: "Material: 14k yellow gold filled, turquoise howlite. Earrings measurement: 40mm x 6mm.",
              price: 13,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_6.png")
            )

earrings_7 = Item.create!(
              seller_id: seller_ruby.id,
              name: "Aztec Boho Ear Cuff Earrings",
              description: "SET OF 3. Material: 14k yellow gold filled, 14k rose gold filled, 14k white gold filled. Earrings measurement: 25mm x 6mm.",
              price: 55,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_7.png")
            )

earrings_8 = Item.create!(
              seller_id: seller_ruby.id,
              name: "Pin Ear Cuff Earrings",
              description: "SET OF 4. Material: 14k yellow gold filled, 14k rose gold filled, 14k white gold filled, sterling silver. Earrings measurement: 25mm x 6mm.",
              price: 60,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_8.png")
            )

earrings_9 = Item.create!(
              seller_id: seller_ruby.id,
              name: "Rose Stud Earrings",
              description: "Material: Sterling silver. Earrings measurement: 20mm x 20mm. Other: Handmade by expert craftsman and inspected for quality.",
              price: 20,
              category: "earrings",
              quantity: 100,
              image: File.open("app/assets/images/earrings_9.png")
            )

ring_9 = Item.create!(
          seller_id: seller_ruby.id,
          name: "Sterling Silver Knot Ring",
          description: "Material: Sterling silver. Size: US Ring Size 6. Other: Handmade by expert craftsman and inspected for quality.",
          price: 12,
          category: "ring",
          quantity: 100,
          image: File.open("app/assets/images/ring_9.png")
        )

user_1 = User.create!(
              first_name: 'Margaret',
              last_name: 'Ponce',
              email: 'margaretponce@gmail.com',
              password: 'margaretponce',
              seller: false
            )

review_1 = Review.create!(
  item_id: earrings_1.id,
  user_id: user_1.id,
  rating: 4,
  description: "Great! Very well made."
)

user_2 = User.create!(
              first_name: 'Janice',
              last_name: 'Joyner',
              email: 'janicejoyner@gmail.com',
              password: 'janicejoyner',
              seller: false
            )

review_2 = Review.create!(
  item_id: earrings_1.id,
  user_id: user_2.id,
  rating: 4,
  description: "Love it, but a little big for my liking."
)

user_3 = User.create!(
              first_name: 'Diane',
              last_name: 'Buzzard',
              email: 'dianebuzzard@gmail.com',
              password: 'dianebuzzard',
              seller: false
            )

review_3 = Review.create!(
  item_id: earrings_1.id,
  user_id: user_3.id,
  rating: 5,
  description: "Love the craftsmanship!"
)

user_4 = User.create!(
              first_name: 'Max',
              last_name: 'Clark',
              email: 'maxclark@gmail.com',
              password: 'maxclark',
              seller: false
            )

review_4 = Review.create!(
  item_id: earrings_1.id,
  user_id: user_4.id,
  rating: 5,
  description: "Got them for my wife for our anniversary, and she loved it."
)

user_5 = User.create!(
              first_name: 'Kathy',
              last_name: 'Webber',
              email: 'kathywebber@gmail.com',
              password: 'kathywebber',
              seller: false
            )

review_5 = Review.create!(
  item_id: earrings_2.id,
  user_id: user_5.id,
  rating: 5,
  description: "Just one word. GORGEOUS!!!"
)

user_6 = User.create!(
              first_name: 'Tasha',
              last_name: 'Rogers',
              email: 'tasharogers@gmail.com',
              password: 'tasharogers',
              seller: false
            )

review_6 = Review.create!(
  item_id: earrings_2.id,
  user_id: user_6.id,
  rating: 3,
  description: "Pretty, but the lotus bit is too gold for my liking."
)

user_7 = User.create!(
              first_name: 'Marianne',
              last_name: 'Flores',
              email: 'marianneflores@gmail.com',
              password: 'marianneflores',
              seller: false
            )

review_7 = Review.create!(
  item_id: earrings_2.id,
  user_id: user_7.id,
  rating: 4,
  description: "Very well made."
)

user_8 = User.create!(
              first_name: 'Marketta',
              last_name: 'Fraher',
              email: 'markettafraher@gmail.com',
              password: 'markettafraher',
              seller: false
            )

review_8 = Review.create!(
  item_id: earrings_2.id,
  user_id: user_8.id,
  rating: 5,
  description: "Wore them to a party, and received a lot of compliments!"
)

user_9 = User.create!(
              first_name: 'Dorothy',
              last_name: 'Kurland',
              email: 'dorothykurland@gmail.com',
              password: 'dorothykurland',
              seller: false
            )

review_9 = Review.create!(
  item_id: earrings_3.id,
  user_id: user_9.id,
  rating: 3,
  description: "The hook part is too big..."
)

user_10 = User.create!(
              first_name: 'Gabrielle',
              last_name: 'Holloway',
              email: 'gabrielleholloway@gmail.com',
              password: 'gabrielleholloway',
              seller: false
            )

review_10 = Review.create!(
  item_id: earrings_3.id,
  user_id: user_10.id,
  rating: 3,
  description: "Great design, but cheaply made."
)

user_11 = User.create!(
              first_name: 'Jessie',
              last_name: 'Martinez',
              email: 'jessiemartinez@gmail.com',
              password: 'jessiemartinez',
              seller: false
            )

review_11 = Review.create!(
  item_id: earrings_4.id,
  user_id: user_11.id,
  rating: 5,
  description: "LOVE THEM! Just the right size."
)

user_12 = User.create!(
              first_name: 'Yvonne',
              last_name: 'Turner',
              email: 'yvonneturner@gmail.com',
              password: 'yvonneturner',
              seller: false
            )

review_12 = Review.create!(
  item_id: earrings_4.id,
  user_id: user_12.id,
  rating: 5,
  description: "So glad I bought them! They're my go-to earrings."
)

user_13 = User.create!(
              first_name: 'Emilie',
              last_name: 'Johnson',
              email: 'emiliejohnson@gmail.com',
              password: 'emiliejohnson',
              seller: false
            )

review_13 = Review.create!(
  item_id: earrings_4.id,
  user_id: user_13.id,
  rating: 4,
  description: "Love the simple design."
)

user_14 = User.create!(
              first_name: 'Angela',
              last_name: 'McCoy',
              email: 'angelamccoy@gmail.com',
              password: 'angelamccoy',
              seller: false
            )

review_14 = Review.create!(
  item_id: earrings_5.id,
  user_id: user_14.id,
  rating: 3,
  description: "Pretty, but the metal is too gold for my liking."
)

user_15 = User.create!(
              first_name: 'Belen',
              last_name: 'Hill',
              email: 'belenhill@gmail.com',
              password: 'belenhill',
              seller: false
            )

review_15 = Review.create!(
  item_id: earrings_5.id,
  user_id: user_15.id,
  rating: 3,
  description: "Interesting design, but a bit too big."
)

user_16 = User.create!(
              first_name: 'Brenda',
              last_name: 'Gladden',
              email: 'brendagladden@gmail.com',
              password: 'brendagladden',
              seller: false
            )

review_16 = Review.create!(
  item_id: earrings_5.id,
  user_id: user_16.id,
  rating: 2,
  description: "SUPER HEAVY! Can\'t wear them for more than a couple of hours."
)

user_17 = User.create!(
              first_name: 'Ada',
              last_name: 'Nelson',
              email: 'adanelson@gmail.com',
              password: 'adanelson',
              seller: false
            )

review_17 = Review.create!(
  item_id: earrings_6.id,
  user_id: user_17.id,
  rating: 4,
  description: "Wore them to my sister\'s wedding, and received a lot of compliments."
)

user_18 = User.create!(
              first_name: 'Claudia',
              last_name: 'Chamblee',
              email: 'claudiachamblee@gmail.com',
              password: 'claudiachamblee',
              seller: false
            )

review_18 = Review.create!(
  item_id: earrings_6.id,
  user_id: user_18.id,
  rating: 5,
  description: "Thought they would be too big, but ended up being the perfect size!"
)

user_19 = User.create!(
              first_name: 'Lisa',
              last_name: 'Zager',
              email: 'lisazager@gmail.com',
              password: 'lisazager',
              seller: false
            )

review_19 = Review.create!(
  item_id: earrings_7.id,
  user_id: user_19.id,
  rating: 4,
  description: "Love the design and reasonably priced."
)

user_20 = User.create!(
              first_name: 'Rosemarie',
              last_name: 'Clark',
              email: 'rosemarieclark@gmail.com',
              password: 'rosemarieclark',
              seller: false
            )

review_20 = Review.create!(
  item_id: earrings_7.id,
  user_id: user_20.id,
  rating: 4,
  description: "My very first cuff earrings and I love them!"
)

user_21 = User.create!(
              first_name: 'Marie',
              last_name: 'Ruano',
              email: 'marieruano@gmail.com',
              password: 'marieruano',
              seller: false
            )

review_21 = Review.create!(
  item_id: earrings_7.id,
  user_id: user_21.id,
  rating: 4,
  description: "Got them 2 weeks ago, and I\'ve been wearing them everyday."
)

user_22 = User.create!(
              first_name: 'Elizabeth',
              last_name: 'Barrow',
              email: 'elizabethbarrow@gmail.com',
              password: 'elizabethbarrow',
              seller: false
            )

review_22 = Review.create!(
  item_id: earrings_8.id,
  user_id: user_22.id,
  rating: 3,
  description: "Well made, but too big for my liking."
)

user_23 = User.create!(
              first_name: 'Rebecca',
              last_name: 'Clontz',
              email: 'rebeccaclontz@gmail.com',
              password: 'rebeccaclontz',
              seller: false
            )

review_23 = Review.create!(
  item_id: earrings_8.id,
  user_id: user_23.id,
  rating: 4,
  description: "Love the design!"
)

user_24 = User.create!(
              first_name: 'Kaley',
              last_name: 'Ramos',
              email: 'kaleyramos@gmail.com',
              password: 'kaleyramos',
              seller: false
            )

review_24 = Review.create!(
  item_id: earrings_9.id,
  user_id: user_24.id,
  rating: 5,
  description: "LOVE LOVE LOVE! Wore them to my wedding."
)

user_25 = User.create!(
              first_name: 'Donna',
              last_name: 'McMillan',
              email: 'donnamcmillan@gmail.com',
              password: 'donnamcmillan',
              seller: false
            )

review_25 = Review.create!(
  item_id: earrings_9.id,
  user_id: user_25.id,
  rating: 4,
  description: "Love the simple design."
)

user_26 = User.create!(
              first_name: 'Julia',
              last_name: 'Woods',
              email: 'juliawoods@gmail.com',
              password: 'juliawoods',
              seller: false
            )

review_26 = Review.create!(
  item_id: earrings_9.id,
  user_id: user_26.id,
  rating: 5,
  description: "Very well made! Just need to polish them from time to time."
)

user_27 = User.create!(
              first_name: 'Julianne',
              last_name: 'Williams',
              email: 'juliannewilliams@gmail.com',
              password: 'juliannewilliams',
              seller: false
            )

review_27 = Review.create!(
  item_id: necklace_1.id,
  user_id: user_27.id,
  rating: 5,
  description: "LOVE THIS NECKLACE!"
)

user_28 = User.create!(
              first_name: 'Clara',
              last_name: 'Campbell',
              email: 'claracampbell@gmail.com',
              password: 'claracampbell',
              seller: false
            )

review_28 = Review.create!(
  item_id: necklace_1.id,
  user_id: user_28.id,
  rating: 5,
  description: "Pefect for spring."
)

user_29 = User.create!(
              first_name: 'Tonya',
              last_name: 'Scully',
              email: 'tonyascully@gmail.com',
              password: 'tonyascully',
              seller: false
            )

review_29 = Review.create!(
  item_id: necklace_1.id,
  user_id: user_29.id,
  rating: 4,
  description: "Very pretty dainty necklace."
)

user_30 = User.create!(
              first_name: 'Mercedes',
              last_name: 'Jackson',
              email: 'mercedesjackson@gmail.com',
              password: 'mercedesjackson',
              seller: false
            )

review_30 = Review.create!(
  item_id: necklace_2.id,
  user_id: user_30.id,
  rating: 4,
  description: "Very well made, but the metal is too gold for my liking."
)

user_31 = User.create!(
              first_name: 'Althea',
              last_name: 'Woods',
              email: 'altheawoods@gmail.com',
              password: 'altheawoods',
              seller: false
            )

review_31 = Review.create!(
  item_id: necklace_2.id,
  user_id: user_31.id,
  rating: 4,
  description: "Love the stone in the center. Compliments my eye color."
)

user_32 = User.create!(
              first_name: 'Carla',
              last_name: 'Mears',
              email: 'carlamears@gmail.com',
              password: 'carlamears',
              seller: false
            )

review_32 = Review.create!(
  item_id: necklace_3.id,
  user_id: user_32.id,
  rating: 4,
  description: "Very pretty necklace!"
)

user_33 = User.create!(
              first_name: 'Angela',
              last_name: 'Acuna',
              email: 'angelaacuna@gmail.com',
              password: 'angelaacuna',
              seller: false
            )

review_33 = Review.create!(
  item_id: necklace_3.id,
  user_id: user_33.id,
  rating: 5,
  description: "Perfect with a simple outfit. My go-to necklace!"
)

user_34 = User.create!(
              first_name: 'Shirley',
              last_name: 'Milam',
              email: 'shirleymilam@gmail.com',
              password: 'shirleymilam',
              seller: false
            )

review_34 = Review.create!(
  item_id: necklace_4.id,
  user_id: user_34.id,
  rating: 5,
  description: "Very pretty shade of pink."
)

user_35 = User.create!(
              first_name: 'Teresa',
              last_name: 'Hayes',
              email: 'teresahayes@gmail.com',
              password: 'teresahayes',
              seller: false
            )

review_35 = Review.create!(
  item_id: necklace_4.id,
  user_id: user_35.id,
  rating: 4,
  description: "Wore it to my friend's wedding, and received a lot of compliments!"
)

user_36 = User.create!(
              first_name: 'Judith',
              last_name: 'Shields',
              email: 'judithshields@gmail.com',
              password: 'judithshields',
              seller: false
            )

review_36 = Review.create!(
  item_id: necklace_4.id,
  user_id: user_36.id,
  rating: 4,
  description: "Great everyday piece for spring."
)

user_37 = User.create!(
              first_name: 'Verna',
              last_name: 'Polanco',
              email: 'vernapolanco@gmail.com',
              password: 'vernapolanco',
              seller: false
            )

review_37 = Review.create!(
  item_id: necklace_5.id,
  user_id: user_37.id,
  rating: 5,
  description: "Love the unique design!"
)

user_38 = User.create!(
              first_name: 'Diane',
              last_name: 'Nelson',
              email: 'dianenelson@gmail.com',
              password: 'dianenelson',
              seller: false
            )

review_38 = Review.create!(
  item_id: necklace_5.id,
  user_id: user_38.id,
  rating: 4,
  description: "Got it for my friend, and she loves it!"
)

user_39 = User.create!(
              first_name: 'Monica',
              last_name: 'Antoine',
              email: 'monicaantoine@gmail.com',
              password: 'monicaantoine',
              seller: false
            )

review_39 = Review.create!(
  item_id: necklace_5.id,
  user_id: user_39.id,
  rating: 4,
  description: "Very beautiful necklace at a good price!"
)

user_40 = User.create!(
              first_name: 'Elise',
              last_name: 'Ibarra',
              email: 'eliseibarra@gmail.com',
              password: 'eliseibarra',
              seller: false
            )

review_40 = Review.create!(
  item_id: necklace_6.id,
  user_id: user_40.id,
  rating: 5,
  description: "Great layering piece!"
)

user_41 = User.create!(
              first_name: 'Judith',
              last_name: 'Kingsley',
              email: 'judithkingsley@gmail.com',
              password: 'judithkingsley',
              seller: false
            )

review_41 = Review.create!(
  item_id: necklace_6.id,
  user_id: user_41.id,
  rating: 4,
  description: "Love its simplicity."
)

user_42 = User.create!(
              first_name: 'Pamela',
              last_name: 'Cooley',
              email: 'pamelacooley@gmail.com',
              password: 'pamelacooley',
              seller: false
            )

review_42 = Review.create!(
  item_id: necklace_7.id,
  user_id: user_42.id,
  rating: 4,
  description: "Very well made. Has a good weight to it."
)

user_43 = User.create!(
              first_name: 'Ebony',
              last_name: 'Harrison',
              email: 'ebonyharrison@gmail.com',
              password: 'ebonyharrison',
              seller: false
            )

review_43 = Review.create!(
  item_id: necklace_7.id,
  user_id: user_43.id,
  rating: 4,
  description: "Bought it for my neice, and she loves it!"
)

user_44 = User.create!(
              first_name: 'Michele',
              last_name: 'Gibson',
              email: 'michelegibson@gmail.com',
              password: 'michelegibson',
              seller: false
            )

review_44 = Review.create!(
  item_id: necklace_7.id,
  user_id: user_44.id,
  rating: 3,
  description: "A bit on the heavy side."
)

user_45 = User.create!(
              first_name: 'Linda',
              last_name: 'Grondin',
              email: 'lindagrondin@gmail.com',
              password: 'lindagrondin',
              seller: false
            )

review_45 = Review.create!(
  item_id: necklace_8.id,
  user_id: user_45.id,
  rating: 3,
  description: "Very pretty, but not the best quality."
)

user_46 = User.create!(
              first_name: 'Jana',
              last_name: 'Thomas',
              email: 'janathomas@gmail.com',
              password: 'janathomas',
              seller: false
            )

review_46 = Review.create!(
  item_id: necklace_8.id,
  user_id: user_46.id,
  rating: 4,
  description: "Pretty, delicate necklace."
)

user_47 = User.create!(
              first_name: 'Michelle',
              last_name: 'Davis',
              email: 'michelledavis@gmail.com',
              password: 'michelledavis',
              seller: false
            )

review_47 = Review.create!(
  item_id: necklace_8.id,
  user_id: user_47.id,
  rating: 4,
  description: "Perfect length! Thought it\'d be too short."
)

user_48 = User.create!(
              first_name: 'Mary',
              last_name: 'Fulton',
              email: 'maryfulton@gmail.com',
              password: 'maryfulton',
              seller: false
            )

review_48 = Review.create!(
  item_id: necklace_9.id,
  user_id: user_48.id,
  rating: 4,
  description: "A classic piece!"
)

user_49 = User.create!(
              first_name: 'Elizabeth',
              last_name: 'Yu',
              email: 'elizabethyu@gmail.com',
              password: 'elizabethyu',
              seller: false
            )

review_49 = Review.create!(
  item_id: necklace_9.id,
  user_id: user_49.id,
  rating: 5,
  description: "Love the simple design!"
)

user_50 = User.create!(
              first_name: 'Joyce',
              last_name: 'Robinson',
              email: 'joycerobinson@gmail.com',
              password: 'joycerobinson',
              seller: false
            )

review_50 = Review.create!(
  item_id: necklace_9.id,
  user_id: user_50.id,
  rating: 5,
  description: "Bought it for my daughter\'s graduation present, and she loves it!"
)

user_51 = User.create!(
              first_name: 'Leslie',
              last_name: 'Roberts',
              email: 'leslieroberts@gmail.com',
              password: 'leslieroberts',
              seller: false
            )

review_51 = Review.create!(
  item_id: necklace_10.id,
  user_id: user_51.id,
  rating: 5,
  description: "Great everyday piece."
)

user_52 = User.create!(
              first_name: 'Megan',
              last_name: 'Green',
              email: 'megangreen@gmail.com',
              password: 'megangreen',
              seller: false
            )

review_52 = Review.create!(
  item_id: necklace_10.id,
  user_id: user_52.id,
  rating: 4,
  description: "Very well made, and to my surprise, has a good weight to it."
)

user_53 = User.create!(
              first_name: 'Mae',
              last_name: 'Prater',
              email: 'maeprater@gmail.com',
              password: 'maeprater',
              seller: false
            )

review_53 = Review.create!(
  item_id: ring_1.id,
  user_id: user_53.id,
  rating: 4,
  description: "My first stacking ring set and I LOVE it!"
)

user_54 = User.create!(
              first_name: 'Brenda',
              last_name: 'Highland',
              email: 'brendahighland@gmail.com',
              password: 'brendahighland',
              seller: false
            )

review_54 = Review.create!(
  item_id: ring_1.id,
  user_id: user_54.id,
  rating: 4,
  description: "Love the combination of mixed metals!"
)

user_55 = User.create!(
              first_name: 'Valerie',
              last_name: 'Burgess',
              email: 'valerieburgess@gmail.com',
              password: 'valerieburgess',
              seller: false
            )

review_55 = Review.create!(
  item_id: ring_2.id,
  user_id: user_55.id,
  rating: 4,
  description: "If you love a simple design, this is the one to get!"
)

user_56 = User.create!(
              first_name: 'Clarissa',
              last_name: 'Lawrence',
              email: 'clarissalawrence@gmail.com',
              password: 'clarissalawrence',
              seller: false
            )

review_56 = Review.create!(
  item_id: ring_2.id,
  user_id: user_56.id,
  rating: 4,
  description: "Very pretty ring set. Would definitely buy it for my friends."
)

user_57 = User.create!(
              first_name: 'Evelyn',
              last_name: 'Martucci',
              email: 'evelynmartucci@gmail.com',
              password: 'evelynmartucci',
              seller: false
            )

review_57 = Review.create!(
  item_id: ring_3.id,
  user_id: user_57.id,
  rating: 4,
  description: "Had the gold one and loved it so much that I also got the silver one!"
)

user_58 = User.create!(
              first_name: 'Opal',
              last_name: 'Patton',
              email: 'opanpatton@gmail.com',
              password: 'opalpatton',
              seller: false
            )

review_58 = Review.create!(
  item_id: ring_3.id,
  user_id: user_58.id,
  rating: 4,
  description: "Very pretty, delicate ring."
)

user_59 = User.create!(
              first_name: 'Gertrude',
              last_name: 'Hull',
              email: 'gertrudehull@gmail.com',
              password: 'gertrudehull',
              seller: false
            )

review_59 = Review.create!(
  item_id: ring_4.id,
  user_id: user_59.id,
  rating: 5,
  description: "ABSOLUTELY LOVE THIS RING SET!!!"
)

user_60 = User.create!(
              first_name: 'Sarah',
              last_name: 'Clay',
              email: 'sarahclay@gmail.com',
              password: 'sarahclay',
              seller: false
            )

review_60 = Review.create!(
  item_id: ring_4.id,
  user_id: user_60.id,
  rating: 5,
  description: "Love the combination of mixed metals and cv."
)

user_61 = User.create!(
              first_name: 'Sarah',
              last_name: 'Doran',
              email: 'sarahdoran@gmail.com',
              password: 'sarahdoran',
              seller: false
            )

review_61 = Review.create!(
  item_id: ring_5.id,
  user_id: user_61.id,
  rating: 5,
  description: "Easily adjustable to fit your finger."
)

user_62 = User.create!(
              first_name: 'Faye',
              last_name: 'Healy',
              email: 'fayehealy@gmail.com',
              password: 'fayehealy',
              seller: false
            )

review_62 = Review.create!(
  item_id: ring_5.id,
  user_id: user_62.id,
  rating: 3,
  description: "Love this ring, but don\'t think it\'s as well made as her other pieces."
)

user_63 = User.create!(
              first_name: 'Klara',
              last_name: 'Collins',
              email: 'klaracollins@gmail.com',
              password: 'klaracollins',
              seller: false
            )

review_63 = Review.create!(
  item_id: ring_6.id,
  user_id: user_63.id,
  rating: 5,
  description: "LOVE this ring set! Just a unique design."
)

user_64 = User.create!(
              first_name: 'Lorraine',
              last_name: 'Walker',
              email: 'lorrainewalker@gmail.com',
              password: 'lorrainewalker',
              seller: false
            )

review_64 = Review.create!(
  item_id: ring_6.id,
  user_id: user_64.id,
  rating: 5,
  description: "If you love stacking ring sets, you must buy this!"
)


user_65 = User.create!(
              first_name: 'Terry',
              last_name: 'Edens',
              email: 'terryedens@gmail.com',
              password: 'terryedens',
              seller: false
            )

review_65 = Review.create!(
  item_id: ring_7.id,
  user_id: user_65.id,
  rating: 4,
  description: "Got it for my wife, and she absolutely loves it!"
)

user_66 = User.create!(
              first_name: 'Susan',
              last_name: 'Watson',
              email: 'susanwatson@gmail.com',
              password: 'susanwatson',
              seller: false
            )

review_66 = Review.create!(
  item_id: ring_7.id,
  user_id: user_66.id,
  rating: 4,
  description: "Love the combination of mixed metals and cv!"
)

user_67 = User.create!(
              first_name: 'Shirley',
              last_name: 'Hale',
              email: 'shirleyhale@gmail.com',
              password: 'shirleyhale',
              seller: false
            )

review_67 = Review.create!(
  item_id: ring_8.id,
  user_id: user_67.id,
  rating: 4,
  description: "Very pretty statement piece."
)

user_67 = User.create!(
              first_name: 'Connie',
              last_name: 'Allen',
              email: 'connieallen@gmail.com',
              password: 'connieallen',
              seller: false
            )

review_67 = Review.create!(
  item_id: ring_8.id,
  user_id: user_67.id,
  rating: 4,
  description: "Love the turquoise center piece!"
)

user_68 = User.create!(
              first_name: 'Lynn',
              last_name: 'Simpson',
              email: 'lynnsimpson@gmail.com',
              password: 'lynnsimpson',
              seller: false
            )

review_68 = Review.create!(
  item_id: ring_9.id,
  user_id: user_68.id,
  rating: 5,
  description: "Simple and classic."
)

user_69 = User.create!(
              first_name: 'Gladys',
              last_name: 'Sutton',
              email: 'gladyssutton@gmail.com',
              password: 'gladyssutton',
              seller: false
            )

review_69 = Review.create!(
  item_id: ring_9.id,
  user_id: user_69.id,
  rating: 5,
  description: "Great alternative to Tiffany\'s!"
)

user_70 = User.create!(
              first_name: 'Ellen',
              last_name: 'Howard',
              email: 'ellenhoward@gmail.com',
              password: 'ellenhoward',
              seller: false
            )

review_70 = Review.create!(
  item_id: earrings_1.id,
  user_id: user_70.id,
  rating: 4,
  description: "Received a lot of compliments when I wore them!"
)

user_71 = User.create!(
              first_name: 'Kathleen',
              last_name: 'Deleon',
              email: 'kathleendeleon@gmail.com',
              password: 'kathleendeleon',
              seller: false
            )

review_71 = Review.create!(
  item_id: earrings_2.id,
  user_id: user_71.id,
  rating: 5,
  description: "LOVE THE POP OF COLOR!"
)

user_72 = User.create!(
              first_name: 'Marcia',
              last_name: 'Rau',
              email: 'marciarau@gmail.com',
              password: 'marciarau',
              seller: false
            )

review_72 = Review.create!(
  item_id: earrings_3.id,
  user_id: user_72.id,
  rating: 4,
  description: "Love the cute design!"
)

user_73 = User.create!(
              first_name: 'Irene',
              last_name: 'Richardson',
              email: 'irenerichardson@gmail.com',
              password: 'irenerichardson',
              seller: false
            )

review_73 = Review.create!(
  item_id: earrings_3.id,
  user_id: user_73.id,
  rating: 3,
  description: "Wish the hook were a bit smaller, but overall, I enjoy wearing it."
)

user_74 = User.create!(
              first_name: 'Amanda',
              last_name: 'Hein',
              email: 'amandahein@gmail.com',
              password: 'amandahein',
              seller: false
            )

review_74 = Review.create!(
  item_id: earrings_4.id,
  user_id: user_74.id,
  rating: 5,
  description: "My favorite studs to wear!"
)

user_75 = User.create!(
              first_name: 'Kristina',
              last_name: 'Fowler',
              email: 'kristinafowler@gmail.com',
              password: 'kristinafowler',
              seller: false
            )

review_75 = Review.create!(
  item_id: earrings_4.id,
  user_id: user_75.id,
  rating: 5,
  description: "Very well made. Would purchase again!"
)

user_76 = User.create!(
              first_name: 'Tracy',
              last_name: 'Morrill',
              email: 'tracymorrill@gmail.com',
              password: 'tracymorrill',
              seller: false
            )

review_76 = Review.create!(
  item_id: earrings_5.id,
  user_id: user_76.id,
  rating: 4,
  description: "Love the unique design!"
)

user_77 = User.create!(
              first_name: 'Lena',
              last_name: 'Hernandez',
              email: 'lenahernandez@gmail.com',
              password: 'lenahernandez',
              seller: false
            )

review_77 = Review.create!(
  item_id: earrings_6.id,
  user_id: user_77.id,
  rating: 4,
  description: "Love the turquoise! Great pop of color."
)

user_78 = User.create!(
              first_name: 'Emma',
              last_name: 'Thorne',
              email: 'emmathorne@gmail.com',
              password: 'emmathorne',
              seller: false
            )

review_78 = Review.create!(
  item_id: earrings_6.id,
  user_id: user_78.id,
  rating: 5,
  description: "Beautiful, just beautiful!"
)

user_79 = User.create!(
              first_name: 'Nicky',
              last_name: 'Bakken',
              email: 'nickybakken@gmail.com',
              password: 'nickybakken',
              seller: false
            )

review_79 = Review.create!(
  item_id: earrings_7.id,
  user_id: user_79.id,
  rating: 5,
  description: "Great quality! Exactly what I\'ve been searching for!"
)

user_80 = User.create!(
              first_name: 'Chau',
              last_name: 'White',
              email: 'chauwhite@gmail.com',
              password: 'chauwhite',
              seller: false
            )

review_80 = Review.create!(
  item_id: earrings_8.id,
  user_id: user_80.id,
  rating: 4,
  description: "Great quality! Has a good weight to them."
)

user_81 = User.create!(
              first_name: 'Deborah',
              last_name: 'Petrus',
              email: 'deborahpetrus@gmail.com',
              password: 'deborahpetrus',
              seller: false
            )

review_81 = Review.create!(
  item_id: earrings_8.id,
  user_id: user_81.id,
  rating: 4,
  description: "Love them! My friends bought them too!"
)

user_82 = User.create!(
              first_name: 'Lori',
              last_name: 'Fraise',
              email: 'lorifraise@gmail.com',
              password: 'lorifraise',
              seller: false
            )

review_82 = Review.create!(
  item_id: earrings_9.id,
  user_id: user_82.id,
  rating: 5,
  description: "Bought it for my best friend and she loves it!"
)

user_83 = User.create!(
              first_name: 'Jennifer',
              last_name: 'McIntire',
              email: 'jennifermcintire@gmail.com',
              password: 'jennifermcintire',
              seller: false
            )

review_83 = Review.create!(
  item_id: necklace_1.id,
  user_id: user_83.id,
  rating: 5,
  description: "My go-to necklace at the moment!"
)

user_84 = User.create!(
              first_name: 'Ashley',
              last_name: 'Holloway',
              email: 'ashleyholloway@gmail.com',
              password: 'ashleyholloway',
              seller: false
            )

review_84 = Review.create!(
  item_id: necklace_2.id,
  user_id: user_84.id,
  rating: 5,
  description: "Bought it for my sister and she absolutely loves it!"
)

user_85 = User.create!(
              first_name: 'Lucia',
              last_name: 'Benton',
              email: 'luciabenton@gmail.com',
              password: 'luciabenton',
              seller: false
            )

review_85 = Review.create!(
  item_id: necklace_2.id,
  user_id: user_85.id,
  rating: 5,
  description: "Love the details surrounding the center stone!"
)

user_86 = User.create!(
              first_name: 'Esther',
              last_name: 'Colby',
              email: 'esthercolby@gmail.com',
              password: 'esthercolby',
              seller: false
            )

review_86 = Review.create!(
  item_id: necklace_3.id,
  user_id: user_86.id,
  rating: 5,
  description: "Very well made! Love the details."
)

user_87 = User.create!(
              first_name: 'Carrie',
              last_name: 'Langford',
              email: 'carrielangford@gmail.com',
              password: 'carrielangford',
              seller: false
            )

review_87 = Review.create!(
  item_id: necklace_3.id,
  user_id: user_87.id,
  rating: 5,
  description: "Bought it as a gift and I love it! Just ordered myself one."
)

user_88 = User.create!(
              first_name: 'Theresa',
              last_name: 'Hill',
              email: 'theresahill@gmail.com',
              password: 'theresahill',
              seller: false
            )

review_88 = Review.create!(
  item_id: necklace_4.id,
  user_id: user_88.id,
  rating: 4,
  description: "Very well made! Just bought one for my mom."
)

user_89 = User.create!(
              first_name: 'Angela',
              last_name: 'Robinson',
              email: 'angelarobinson@gmail.com',
              password: 'angelarobinson',
              seller: false
            )

review_89 = Review.create!(
  item_id: necklace_5.id,
  user_id: user_89.id,
  rating: 5,
  description: "LOVE LOVE LOVE IT!!!"
)

user_90 = User.create!(
              first_name: 'Ashley',
              last_name: 'Moore',
              email: 'ashleymoore@gmail.com',
              password: 'ashleymoore',
              seller: false
            )

review_90 = Review.create!(
  item_id: necklace_6.id,
  user_id: user_90.id,
  rating: 5,
  description: "Very well made!"
)

user_91 = User.create!(
              first_name: 'Jennifer',
              last_name: 'Perry',
              email: 'jenniferperry@gmail.com',
              password: 'jenniferperry',
              seller: false
            )

review_91 = Review.create!(
  item_id: necklace_7.id,
  user_id: user_91.id,
  rating: 5,
  description: "High quality and great design!"
)

user_92 = User.create!(
              first_name: 'Tiffany',
              last_name: 'Brouillard',
              email: 'tiffanybrouillard@gmail.com',
              password: 'tiffanybrouillard',
              seller: false
            )

review_92 = Review.create!(
  item_id: necklace_8.id,
  user_id: user_92.id,
  rating: 5,
  description: "Love the small pop of color!"
)

user_93 = User.create!(
              first_name: 'Lorraine',
              last_name: 'Speck',
              email: 'lorrainespeck@gmail.com',
              password: 'lorrainespeck',
              seller: false
            )

review_93 = Review.create!(
  item_id: necklace_9.id,
  user_id: user_93.id,
  rating: 5,
  description: "Great piece to gift to family and friends!"
)

user_94 = User.create!(
              first_name: 'Theresa',
              last_name: 'Sinclair',
              email: 'theresasinclair@gmail.com',
              password: 'theresasinclair',
              seller: false
            )

review_94 = Review.create!(
  item_id: necklace_10.id,
  user_id: user_94.id,
  rating: 5,
  description: "Love it as a layering piece!"
)

user_95 = User.create!(
              first_name: 'Barbara',
              last_name: 'Smallwood',
              email: 'barbarasmallwood@gmail.com',
              password: 'barbarasmallwood',
              seller: false
            )

review_95 = Review.create!(
  item_id: necklace_10.id,
  user_id: user_95.id,
  rating: 5,
  description: "Great simple design."
)

user_96 = User.create!(
              first_name: 'Jennifer',
              last_name: 'Dodd',
              email: 'jenniferdodd@gmail.com',
              password: 'jenniferdodd',
              seller: false
            )

review_96 = Review.create!(
  item_id: ring_1.id,
  user_id: user_96.id,
  rating: 5,
  description: "Great simple design!!!"
)

user_97 = User.create!(
              first_name: 'Helen',
              last_name: 'Irwin',
              email: 'helenirwin@gmail.com',
              password: 'helenirwin',
              seller: false
            )

review_97 = Review.create!(
  item_id: ring_1.id,
  user_id: user_97.id,
  rating: 5,
  description: "LOVE THEM! Just ordered my best friend a set."
)

user_98 = User.create!(
              first_name: 'Wilma',
              last_name: 'Brown',
              email: 'wilmabrown@gmail.com',
              password: 'wilmabrown',
              seller: false
            )

review_98 = Review.create!(
  item_id: ring_2.id,
  user_id: user_98.id,
  rating: 5,
  description: "Simple and classic."
)

user_99 = User.create!(
              first_name: 'Tina',
              last_name: 'Smith',
              email: 'tinasmith@gmail.com',
              password: 'tinasmith',
              seller: false
            )

review_99 = Review.create!(
  item_id: ring_2.id,
  user_id: user_99.id,
  rating: 5,
  description: "Very well made!"
)

user_100 = User.create!(
              first_name: 'Susan',
              last_name: 'Star',
              email: 'susanstar@gmail.com',
              password: 'susanstar',
              seller: false
            )

review_100 = Review.create!(
  item_id: ring_3.id,
  user_id: user_100.id,
  rating: 5,
  description: "Such a delicate, pretty piece!"
)

user_101 = User.create!(
              first_name: 'May',
              last_name: 'Jackson',
              email: 'mayjackson@gmail.com',
              password: 'mayjackson',
              seller: false
            )

review_101 = Review.create!(
  item_id: ring_3.id,
  user_id: user_101.id,
  rating: 5,
  description: "Just love it!"
)

user_102 = User.create!(
              first_name: 'Heather',
              last_name: 'Bloom',
              email: 'heatherbloom@gmail.com',
              password: 'heatherbloom',
              seller: false
            )

review_102 = Review.create!(
  item_id: ring_4.id,
  user_id: user_102.id,
  rating: 5,
  description: "Love the design!"
)

user_103 = User.create!(
              first_name: 'Carolyn',
              last_name: 'Torres',
              email: 'carolyntorres@gmail.com',
              password: 'carolyntorres',
              seller: false
            )

review_103 = Review.create!(
  item_id: ring_4.id,
  user_id: user_103.id,
  rating: 5,
  description: "Very pretty! Glad I got them."
)

user_104 = User.create!(
              first_name: 'Tammy',
              last_name: 'Krieger',
              email: 'tammykrieger@gmail.com',
              password: 'tammykrieger',
              seller: false
            )

review_104 = Review.create!(
  item_id: ring_5.id,
  user_id: user_104.id,
  rating: 4,
  description: "Love the simple design!"
)

user_105 = User.create!(
              first_name: 'Helen',
              last_name: 'Ashley',
              email: 'helenashley@gmail.com',
              password: 'helenashley',
              seller: false
            )

review_105 = Review.create!(
  item_id: ring_5.id,
  user_id: user_105.id,
  rating: 4,
  description: "Love it, but is a bit expensive."
)

user_106 = User.create!(
              first_name: 'Jennifer',
              last_name: 'Nelson',
              email: 'jennifernelson@gmail.com',
              password: 'jennifernelson',
              seller: false
            )

review_106 = Review.create!(
  item_id: ring_6.id,
  user_id: user_106.id,
  rating: 4,
  description: "Great design!!!"
)

user_107 = User.create!(
              first_name: 'Kathy',
              last_name: 'McCord',
              email: 'kathymccord@gmail.com',
              password: 'kathymccord',
              seller: false
            )

review_107 = Review.create!(
  item_id: ring_6.id,
  user_id: user_107.id,
  rating: 5,
  description: "Lovely ring set. Receive compliments whenever I wear them!"
)

user_108 = User.create!(
              first_name: 'Renee',
              last_name: 'Jones',
              email: 'reneejones@gmail.com',
              password: 'reneejones',
              seller: false
            )

review_108 = Review.create!(
  item_id: ring_7.id,
  user_id: user_108.id,
  rating: 5,
  description: "Very pretty! Love them."
)

user_109 = User.create!(
              first_name: 'Marion',
              last_name: 'Hopps',
              email: 'marionhopps@gmail.com',
              password: 'marionhopps',
              seller: false
            )

review_109 = Review.create!(
  item_id: ring_7.id,
  user_id: user_109.id,
  rating: 5,
  description: "Got the set for my sister and she loves it!!!"
)

user_110 = User.create!(
              first_name: 'Denise',
              last_name: 'Miller',
              email: 'denisemiller@gmail.com',
              password: 'denisemiller',
              seller: false
            )

review_110 = Review.create!(
  item_id: ring_8.id,
  user_id: user_110.id,
  rating: 5,
  description: "Great pop of color!"
)

user_111 = User.create!(
              first_name: 'Leila',
              last_name: 'Randle',
              email: 'leilarandle@gmail.com',
              password: 'leilarandle',
              seller: false
            )

review_111 = Review.create!(
  item_id: ring_8.id,
  user_id: user_111.id,
  rating: 5,
  description: "Receive compliments whenever I wear it!"
)

user_112 = User.create!(
              first_name: 'Tracey',
              last_name: 'McKeehan',
              email: 'tracymckeehan@gmail.com',
              password: 'tracymckeehan',
              seller: false
            )

review_112 = Review.create!(
  item_id: ring_9.id,
  user_id: user_112.id,
  rating: 5,
  description: "LOVE LOVE LOVE IT!!!"
)

user_113 = User.create!(
              first_name: 'Tara',
              last_name: 'Craig',
              email: 'taracraig@gmail.com',
              password: 'taracraig',
              seller: false
            )

review_113 = Review.create!(
  item_id: ring_9.id,
  user_id: user_113.id,
  rating: 5,
  description: "Lovely ring! Will order more as gifts!"
)
