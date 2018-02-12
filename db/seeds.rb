# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spellbooks = Spellbook.create([
		{name: 'Elementary Book'},
		{name: 'Easy-going book'},
		{name: 'Cook Book'},
		{name: 'Picture Book'},
	])
recipes = Recipe.create([
		{name:"Tea party potion",},
		{name:"Sparkle Smoke"},
		{name:"Hiding potion"},
		{name:"Room cleaning potion"},
		{name:"Animorph potion"},
	])
ingredients = Ingredient.create([
		{name: "orange"},
		{name: "peach"},
		{name: "pear"},
		{name: "mango"},
		{name: "banana"},
	])
containers = Container.create([
		{name: "desk"},
		{name: "bag"},
		{name: "chest"},
		{name: "locker"},
		{name: "jewelry box"},
	])
familiars = Familiar.create([
		{name: "cat"},
		{name: "bird"},
		{name: "bat"},
		{name: "bee"},
		{name: "snail"},
	])
intruders = Intruder.create([
		{name: "goblin"},
		{name: "brownie"},
		{name: "nymph"},
		{name: "pest"},
		{name: "old troll"},
	])
customers = Customer.create([
		{name:"Marty McFly"},
		{name:"Homeless Mannequin"},
		{name:"Hungry Man"},
		{name:"The Tramp"},
		{name:"Jared"},
	])
witches = Witch.create([
		{name: "penny"},
		{name: "eve"},
		{name: "britany"},
		{name: "laura"},
		{name: "gina"},
	])
