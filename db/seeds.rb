# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'open-uri'
require 'json'
Ingredient.delete_all
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)

ingredients['drinks'].each do |ingredient|
    Ingredient.create(name: ingredient['strIngredient1'])
 end


# Examples:
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Punch")
Cocktail.create(name: "Spritz")
Cocktail.create(name: "Margarita")
Cocktail.create(name: "Piña Colada")
Cocktail.create(name: "Cosmopolitan")
Cocktail.create(name: "Sex on the beach")
