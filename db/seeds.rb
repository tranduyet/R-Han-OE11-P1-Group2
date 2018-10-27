User.create! name:  "Duyet Tran", email: "duyettran0608@gmail.com",
  password: "alice123", password_confirmation: "alice123", admin: true,
  activated: true, activated_at: Time.zone.now

99.times do |n|
  name  = FFaker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create! name:  name, email: email,
    password: password, password_confirmation: password,
    activated: true, activated_at: Time.zone.now
end

15.times do |n|
  name = FFaker::Name.name
  Author.create! name: name
end

Genre.create! name: "Action"
Genre.create! name: "School life"
Genre.create! name: "Abc"
Genre.create! name: "Xyz"
Genre.create! name: "Ghk"
Genre.create! name: "Ikl"
Genre.create! name: "Qwer"
Genre.create! name: "Tyu"
Genre.create! name: "Mnl"
Genre.create! name: "Tyo"
Genre.create! name: "Ecc"
Genre.create! name: "Kame"
Genre.create! name: "Afk"
