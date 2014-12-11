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
Croptype.create!(cropname:'Gorczyca')
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
AreaUnit.create!(unit:'hektar', unit_symbol:'ha')
AreaUnit.create!(unit:'ar', unit_symbol:'ar')
AreaUnit.create!(unit:'akr', unit_symbol:'ak')
AreaUnit.create!(unit:'metr kwadratowy', unit_symbol:'m2')
AreaUnit.create!(unit:'morga', unit_symbol:'m')

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
Volumeunit.create!(name: 'litr', volumesymbol: 'l')
Volumeunit.create!(name: 'tona', volumesymbol: 't')
Volumeunit.create!(name: 'kilogram', volumesymbol: 'kg')
=end
Volumeunit.create!(name: 'sztuka', volumesymbol: 'szt')
=begin
#User type
UserType.create!(user_type: 'Rolnik')
UserType.create!(user_type: 'Jednostka skupu')
UserType.create!(user_type: 'Konsument')
UserType.create!(user_type: 'Admin')

=end

#Task Types
TaskType.create!(name: 'Sprzedaż pola', div_id: 1, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zakup pola', div_id: 2, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Wybudowanie', div_id: 3, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 1, is_for_warehouse: 1)
TaskType.create!(name: 'Zburzenie', div_id: 4, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 1, is_for_warehouse: 1)
TaskType.create!(name: 'Remont', div_id: 5, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 1, is_for_building: 1, is_for_warehouse: 1)
TaskType.create!(name: 'Przyjęcie towaru', div_id: 6, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 1)
TaskType.create!(name: 'Wykorzystanie towaru', div_id: 7, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 1)
TaskType.create!(name: 'Sprzedaż towaru', div_id: 8, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 1)
TaskType.create!(name: 'Leczenie', div_id: 9, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Inseminacja', div_id: 10, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Kastracja', div_id: 11, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Podorywka', div_id: 12, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Odwrotka ', div_id: 13, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Orka przedzimowa', div_id: 14, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Orka siewna ', div_id: 15, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Orka wiosenna', div_id: 16, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Bronowanie', div_id: 17, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Kultywatorowanie', div_id: 18, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Siew', div_id: 19, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Uprawianie ', div_id: 20, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Oprysk', div_id: 21, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Nawożenie', div_id: 22, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Orka głęboka', div_id: 23, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Głęboszowanie', div_id: 24, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Deszczowanie', div_id: 25, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Mulczowanie', div_id: 26, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zbiór plonów', div_id: 27, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Ściółkowanie', div_id: 28, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Talerzowanie', div_id: 29, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Wałowanie', div_id: 30, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Włókowanie', div_id: 31, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Przedplon', div_id: 32, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zbiór słomy', div_id: 33, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Leasing', div_id: 36, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 1, is_for_building: 1, is_for_warehouse: 1)
TaskType.create!(name: 'Sprzedaż plonów', div_id: 37, is_for_cultivation: 1, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zakup zwierząt', div_id: 38, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Sprzedaż zwierząt', div_id: 39, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zakup maszyny', div_id: 40, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 1, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Sprzedaż maszyny', div_id: 41, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 1, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Zakup budynku', div_id: 42, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 1, is_for_warehouse: 0)
TaskType.create!(name: 'Sprzedaż budynku', div_id: 43, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 1, is_for_warehouse: 0)
TaskType.create!(name: 'Zakup magazynu', div_id: 44, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 1)
TaskType.create!(name: 'Sprzedaż magazynu', div_id: 45, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 1)
TaskType.create!(name: 'Sprzedaż słomy', div_id: 46, is_for_cultivation: 0, is_for_mob: 0, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Sprzedaż młodych', div_id: 47, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Odsadzenie młodych', div_id: 48, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)
TaskType.create!(name: 'Przyjęcie młodych', div_id: 49, is_for_cultivation: 0, is_for_mob: 1, is_for_machine: 0, is_for_building: 0, is_for_warehouse: 0)

