# encoding: UTF-8
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
=begin
User.create!(name:  "Admin",
             email: "admin@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             zipcode: "45-098",
             user_type_id: "4",
             admin: true)
=end
=begin
10.times do |n|
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

=begin

Seasonlist.create!(name: '2009/2010')
Seasonlist.create!(name: '2010/2011')
Seasonlist.create!(name: '2011/2012')
Seasonlist.create!(name: '2012/2013')
Seasonlist.create!(name: '2013/2014')
Seasonlist.create!(name: '2014/2015')
Seasonlist.create!(name: '2015/2016')
Seasonlist.create!(name: '2016/2017')
Seasonlist.create!(name: '2017/2018')
Seasonlist.create!(name: '2018/2019')

Croptype.create!(cropname:'Bobik')
Croptype.create!(cropname:'Brokuł')
Croptype.create!(cropname:'Brukselka')
Croptype.create!(cropname:'Brzoskwinie')
Croptype.create!(cropname:'Buraki cukrowe')
Croptype.create!(cropname:'Buraki ćwikłowe')
Croptype.create!(cropname:'Cebula')
Croptype.create!(cropname:'Cukinia')
Croptype.create!(cropname:'Czereśnia')
Croptype.create!(cropname:'Dynia')
Croptype.create!(cropname:'Fasola szparagowa')
Croptype.create!(cropname:'Groch')
Croptype.create!(cropname:'Gruszki')
Croptype.create!(cropname:'Jabłka')
Croptype.create!(cropname:'Jarmuż')
Croptype.create!(cropname:'Jęczmień')
Croptype.create!(cropname:'Kabaczek')
Croptype.create!(cropname:'Kalafior')
Croptype.create!(cropname:'Kalarepa')
Croptype.create!(cropname:'Kapusta')
Croptype.create!(cropname:'Kukurydza')
Croptype.create!(cropname:'Łubin biały')
Croptype.create!(cropname:'Łubin wąskolistny')
Croptype.create!(cropname:'Łubin żółty')
Croptype.create!(cropname:'Marchew')
Croptype.create!(cropname:'Ogórki')
Croptype.create!(cropname:'Owies')
Croptype.create!(cropname:'Papryka')
Croptype.create!(cropname:'Peluszka')
Croptype.create!(cropname:'Pietruszka')
Croptype.create!(cropname:'Pomidor')
Croptype.create!(cropname:'Por')
Croptype.create!(cropname:'Porzeczka czarna')
Croptype.create!(cropname:'Porzeczka czerwona')
Croptype.create!(cropname:'Proso')
Croptype.create!(cropname:'Pszenica')
Croptype.create!(cropname:'Pszenżyto')
Croptype.create!(cropname:'Rzepak')
Croptype.create!(cropname:'Sałata')
Croptype.create!(cropname:'Seler korzeniowy')
Croptype.create!(cropname:'Seler naciowa')
Croptype.create!(cropname:'Sorgo')
Croptype.create!(cropname:'Szparagi')
Croptype.create!(cropname:'Trawa')
Croptype.create!(cropname:'Wiśnie')
Croptype.create!(cropname:'Wyka kosmata')
Croptype.create!(cropname:'Wyka siewna')
Croptype.create!(cropname:'Ziemniaki')
Croptype.create!(cropname:'Żyto')
Croptype.create!(cropname:'Inna')
=end

=begin
Mobtype.create!(name:'Krowy')
Mobtype.create!(name:'Byki')
Mobtype.create!(name:'Świnie')
Mobtype.create!(name:'Kury')
Mobtype.create!(name:'Króliki')
Mobtype.create!(name:'Owce')
Mobtype.create!(name:'Konie')
Mobtype.create!(name:'Lochy')
Mobtype.create!(name:'Kaczki')
Mobtype.create!(name:'Gęsi')
Mobtype.create!(name:'Indyki')
Mobtype.create!(name:'Strusie')
Mobtype.create!(name:'Kozy')
Mobtype.create!(name:'Inne')

#Area Units
AreaUnit.create!(unit:'hektar', symbol:'ha')
AreaUnit.create!(unit:'ar', symbol:'ar')
AreaUnit.create!(unit:'akr', symbol:'ak')
AreaUnit.create!(unit:'metr kwadratowy', symbol:'m2')
AreaUnit.create!(unit:'morga', symbol:'m')
=end

#Building type
Buildingtype.create!(name: 'Budynek gospodarczy')
Buildingtype.create!(name: 'Chlewnia')
Buildingtype.create!(name: 'Chłodnia')
Buildingtype.create!(name: 'Dom')
Buildingtype.create!(name: 'Garaż')
Buildingtype.create!(name: 'Kórnik')
Buildingtype.create!(name: 'Kurnik')
Buildingtype.create!(name: 'Magazyn')
Buildingtype.create!(name: 'Obora')
Buildingtype.create!(name: 'Silos')
Buildingtype.create!(name: 'Stajnia')
Buildingtype.create!(name: 'Stodoła')
Buildingtype.create!(name: 'Szklarnia')
Buildingtype.create!(name: 'Inny')

#Machine type
Machinetype.create!(name: 'Agregat uprawowo - siewny')
Machinetype.create!(name: 'Agregat uprawowy')
Machinetype.create!(name: 'Beczkowóz')
Machinetype.create!(name: 'Brony')
Machinetype.create!(name: 'Ciągnik')
Machinetype.create!(name: 'Kombajn do buraków')
Machinetype.create!(name: 'Kombajn do kukurydzy')
Machinetype.create!(name: 'Kombajn do porzeczek')
Machinetype.create!(name: 'Kombajn do zbioru pomidorów')
Machinetype.create!(name: 'Kombajn zbożowy')
Machinetype.create!(name: 'Kopaczka')
Machinetype.create!(name: 'Kosiarka')
Machinetype.create!(name: 'Kultywator')
Machinetype.create!(name: 'Ładowacz')
Machinetype.create!(name: 'Mieszalnik')
Machinetype.create!(name: 'Opryskiwacz')
Machinetype.create!(name: 'Owijarka')
Machinetype.create!(name: 'Pług')
Machinetype.create!(name: 'Prasa')
Machinetype.create!(name: 'Przenośnik ślimakowy')
Machinetype.create!(name: 'Przyczepa')
Machinetype.create!(name: 'Rozrzutnik obornika')
Machinetype.create!(name: 'Rozsiewacz do nawozu')
Machinetype.create!(name: 'Sadzarka')
Machinetype.create!(name: 'Samochód')
Machinetype.create!(name: 'Sieczkarnia')
Machinetype.create!(name: 'Siewnik zbożowy')
Machinetype.create!(name: 'Sortownik')
Machinetype.create!(name: 'Taśmociąg')
Machinetype.create!(name: 'Wagoworkownica')
Machinetype.create!(name: 'Wał')
Machinetype.create!(name: 'Wózek widłowy')
Machinetype.create!(name: 'Inna')

#Volume unit
Volumeunit.create!(name: 'litr', symbol: 'l')
Volumeunit.create!(name: 'ton', symbol: 't')
Volumeunit.create!(name: 'kilogram', symbol: 'kg')
