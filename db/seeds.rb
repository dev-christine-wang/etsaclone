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
  name: "Rose Quartz Infinity Ring",
  description: "Material: Sterling Silver 925. Color: Rose Gold. Size: US Ring Size 6.",
  price: 27,
  category: "ring",
  quantity: 100
)
