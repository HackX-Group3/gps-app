# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


fruits = Category.create(
	name: "Fruits",
	image: "http://www.eatforhealth.gov.au/sites/default/files/images/the_guidelines/fruit_selection_155265101_web.jpg"
	)

informatique = Category.create(
	name: "Informatique",
	image: "http://mainteance.pc.free.fr/images/43727138_3.jpg"
	)

surgeles = Category.create(
	name: "Surgelés",
	image: "http://www.bfmtv.com/i/580/290/441456.jpg"
	)

legumes = Category.create(
	name: "Légumes",
	image: "http://www.biocoop-tarbes.com/actus/Degustation-des-legumes-locaux/063/0"
  )

list1 = List.create(
	name: "List1"
	)

list2 =List.create(
	name: "List2"
	)

list1.categories << legumes
list1.categories << surgeles

map_test = Map.create(
	nb_categories: 5,
	magasin: "Auchan Villebon",
	image: "http://www.journaldunet.com/economie/face-a-face/conforama-ikea/itineraire-magasin-confo-orleans.jpg"
)

map_test2 = Map.create(
	nb_categories: 5,
	magasin: "Auchan Villebon",
	image: "../../Users/timotheemevel/Downloads/itineraire-magasin-confo-orleans.jpg"
)
