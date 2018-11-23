# User.create! name:  "Trần Thị Vân Anh", age: "21", email: "vanh123@gmail.com",
#   password: "12345678", password_confirmation: "12345678", admin: true

# 30.times do |n|
#   name  = FFaker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create! name:  name, email: email,
#   age: FFaker::Random.rand(15..60),
#     password: password, password_confirmation: password
# end

# 15.times do |n|
#   name = FFaker::Name.name
#   Author.create! name: name
# end

Mangak.create! name: "Tho bay mau",
  description: "abc",
  genre_id: 1,
  author_id: 1,
  picture: Rails.root.join("app/assets/images/1.jpeg").open

# Genre.create! name: "Action"
# Genre.create! name: "School life"
# Genre.create! name: "Abc"
# Genre.create! name: "Xyz"
# Genre.create! name: "Ghk"
# Genre.create! name: "Ikl"
# Genre.create! name: "Qwer"
# Genre.create! name: "Tyu"
# Genre.create! name: "Mnl"
# Genre.create! name: "Tyo"
# Genre.create! name: "Ecc"
# Genre.create! name: "Kame"
# Genre.create! name: "Afk"
