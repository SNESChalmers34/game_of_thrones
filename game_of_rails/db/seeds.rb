# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

# house = House.create ([
  # {name:, img_url: , motto: , territory: , foreignkey}
# ])

stark = House.create(name:"House Stark", img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160703180116", motto:"Winter is Coming", territory:"The North")
lannister = House.create(name: "House Lannister", img_url:"http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151207184048", motto:"Hear Me Roar!", territory:"King's Landing")
baratheon = House.create(name:"House Baratheon", img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160312091515", motto:"Ours is the Fury", territory:"King's Landing")
targaryen = House.create(name:"House Targaryen", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151209185148", motto:"Fire and Blood", territory:"None")


#character = Character.create([
  # {name: , img_url: , alive: , bastard: , fireproof: }
# ])

characters = Character.create([
  {name: "Jon Snow", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/4/49/Battle_of_the_Bastards_08.jpg/revision/latest/scale-to-width-down/270?cb=20160615184845" , alive:true , bastard:true , fireproof:false, house:stark },
  {name: "Arya Stark", img_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/a/ad/Arya6x10.png/revision/latest/scale-to-width-down/270?cb=20160629211505" , alive:true , bastard:false, fireproof:false, house:stark },
  {name: "Sansa Stark", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/6/68/Sansa_stark_s6_battle_bastards_infobox.jpg/revision/latest/scale-to-width-down/270?cb=20160807084759" , alive:true , bastard:false, fireproof:false, house:stark },
  {name: "Tyrion Lannister", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/9/9d/Tyrion6x082.png/revision/latest/scale-to-width-down/270?cb=20160609061404" , alive:true , bastard:false, fireproof:false, house:lannister },
  {name: "Joffrey Baratheon", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/e/ea/Joff_promo_shot_infobox_image.jpg/revision/latest/scale-to-width-down/270?cb=20160809044359" , alive:false , bastard:false, fireproof:false, house:baratheon},
  {name: "Daenerys Targaryen", img_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/2/28/Dany_finale_s6_winds_of_winter.jpg/revision/latest/scale-to-width-down/270?cb=20160630224410", alive:true, bastard:false, fireproof:true, house:targaryen}
])
