# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#User.create!(name:  "Example User",
#             email: "example@railstutorial.org",
#             password:              "foobar",
#             password_confirmation: "foobar",
#             zipcode: "45-098",
#             user_type_id: "1"
#            )

User.create!(name:  "Admin",
             email: "admin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             zipcode: "45-098",
             user_type_id: "4",
             admin: true)

=begin
1.times do |n|
  r = rand(10000)
  name  = "UserName_#{r}"
  email = "example-#{r}@railstutorial.org"
  password = "password"
  r1 = rand(9)
  r2 = rand(9)
  r3 = rand(9)
  r4 = rand(9)
  r5 = rand(9)
  zipcode = "#{r1}#{r2}-#{r3}#{r4}#{r5}"
  type = rand(1..2)
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               zipcode: zipcode,
               user_type_id: type
               )
end
=end