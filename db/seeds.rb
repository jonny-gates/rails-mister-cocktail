require 'open-uri'
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all


ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

ingredients["drinks"].each { |ingredient| Ingredient.create( name: ingredient["strIngredient1"]) }
