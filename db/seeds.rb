# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

	Cocktail.destroy_all
	Ingredient.destroy_all
	Dose.destroy_all

  puts "Cleanning..........."

  mojito   = Cocktail.create(name: 'Mojito')
gin_fizz = Cocktail.create(name: 'Gin fizz')

sparkling_water = Ingredient.create(name: 'Sparkling water')
rum             = Ingredient.create(name: 'Rum')
mint            = Ingredient.create(name: 'Mint')
ice             = Ingredient.create(name: 'Ice')
cane_sugar      = Ingredient.create(name: 'Cane sugar')

Dose.create(description: '20cl', ingredient: sparkling_water, cocktail: mojito )
Dose.create(description: '5cl',  ingredient: rum,             cocktail: mojito )
Dose.create(description: '2 leaves',  ingredient: mint,             cocktail: mojito )
Dose.create(description: '2 blocks',  ingredient: ice,             cocktail: mojito )
Dose.create(description: '2 spoons',  ingredient: cane_sugar,             cocktail: mojito )

gin      = Ingredient.create(name: 'Gin')
tonic    = Ingredient.create(name: 'Tonic')
lemon    = Ingredient.create(name: 'Lemon')
cucumber = Ingredient.create(name: 'Cucumber')
pepper   = Ingredient.create(name: 'Pepper')

Dose.create(description: '20cl', ingredient: gin, cocktail: gin_fizz )
Dose.create(description: '5cl',  ingredient: tonic,             cocktail: gin_fizz )
Dose.create(description: '2 slices',  ingredient: lemon,             cocktail: gin_fizz )
Dose.create(description: '2 slices',  ingredient: cucumber,             cocktail: gin_fizz )
Dose.create(description: '1/2 spoon',  ingredient: pepper,             cocktail: gin_fizz )

  # response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
  # json = JSON.parse(response.read)
  
  # ing1 = Ingredient.create(name: json["drinks"].first["strIngredient1"])
  # ing2 = Ingredient.create(name: json["drinks"][0]["strIngredient1"])
  # ing4 = Ingredient.create(name: json["drinks"][1]["strIngredient1"])
  # ing3 = Ingredient.create(name: json["drinks"][2]["strIngredient1"])
  # ing5 = Ingredient.create(name: json["drinks"][3]["strIngredient1"])
  # ing7 = Ingredient.create(name: json["drinks"][4]["strIngredient1"])
  # ing8 = Ingredient.create(name: json["drinks"][5]["strIngredient1"])
  # ing9 = Ingredient.create(name: json["drinks"][6]["strIngredient1"])
  # ing6 = Ingredient.create(name: json["drinks"][7]["strIngredient1"])


  
  # cocktail1 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail2 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail3 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail4 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail6 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail7 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail8 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail9 = Cocktail.create(name: Faker::GameOfThrones.city)
  # cocktail5 = Cocktail.create(name: Faker::GameOfThrones.city)


  # dose1 = Dose.create(description: Faker::Esport.player, ingredient: ing1, cocktail: cocktail1)  
  # dose2 = Dose.create(description: Faker::Esport.player, ingredient: ing2, cocktail: cocktail2)
  # dose3 = Dose.create(description: Faker::Esport.player, ingredient: ing3, cocktail: cocktail3)
  # dose4 = Dose.create(description: Faker::Esport.player, ingredient: ing3, cocktail: cocktail4)
  # dose5 = Dose.create(description: Faker::Esport.player, ingredient: ing4, cocktail: cocktail5)
  # dose6 = Dose.create(description: Faker::Esport.player, ingredient: ing5, cocktail: cocktail6)
  # dose7 = Dose.create(description: Faker::Esport.player, ingredient: ing6, cocktail: cocktail7)
  # dose8 = Dose.create(description: Faker::Esport.player, ingredient: ing7, cocktail: cocktail8)
  # dose9 = Dose.create(description: Faker::Esport.player, ingredient: ing8, cocktail: cocktail9)
  
puts "Finished"


 