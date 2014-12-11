# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Création de catégories 

animaux = Category.create(
	name: "Animaux",
	image: "http://blog.zoomon.fr/wp-content/uploads/2012/03/15M_ECEC3.jpg"
)

bio = Category.create(
	name: "Bio",
	image: "http://www.jeuneetjoly.com/medias/images/bio-conception-avec-des-lames-9901910.jpg"
)

boissons = Category.create(
	name: "Boissons",
	image: "http://www.pizzaland-herouville.fr/ckfinder/userfiles/images/boissons.png"
)

boucherie = Category.create(
	name: "Boucherie",
	image: "http://www.pizzaland-herouville.fr/ckfinder/userfiles/images/boissons.png"
)

decorations = Category.create(
	name: "Décorations",
	image: "http://qumore.com/pictures-of-christmas-decorations/"
)

electromenager_cuisine = Category.create(
	name: "Electroménager Cuisine",
	image: "http://i2.cdscdn.com/pdt2/2/7/3/1/700x700/tri8713016044273/rw/blender-avec-bol-plastique-375.jpg"
)

epicerie_salée = Category.create(
	name: "Épicerie Salée",
	image: "http://www.geantcasino.fr/Style%20Library/images/NosRayons/Alimentaire/epiceriesalee_metier.jpg"
)

epicerie_sucrée = Category.create(
	name: "Épicerie Sucrée",
	image: "http://www.biocooptassin.com/public/img/medium/picerie%20sucree.jpg"
)

fruits = Category.create(
	name: "Fruits",
	image: "http://www.eatforhealth.gov.au/sites/default/files/images/the_guidelines/fruit_selection_155265101_web.jpg"
)

hygiene_feminine= Category.create(
	name: "Hygiène Féminine",
	image: "http://www.femina-intimate.com/_uploads/imagesgallery/feminaall(1).jpg"
)


informatique = Category.create(
	name: "Informatique",
	image: "http://mainteance.pc.free.fr/images/43727138_3.jpg"
)

jardinage = Category.create(
	name: "Jardinage",
	image: "http://fr.jardins-animes.com/images/secateur-taille-felco-2.jpg"
)

legumes = Category.create(
	name: "Légumes",
	image: "http://a136.idata.over-blog.com/2/28/05/61/Divers/fruitslegumes.jpg"
  )

librairie_papeterie = Category.create(
	name: "Librairie/Papeterie",
	image: "http://decitre.di-static.com/media/wysiwyg/2014/06-Juin/confluence-papeterie.jpg"
)

musique = Category.create(
	name: "Musique",
	image: "http://i2.cdscdn.com/pdt2/3/1/n/1/700x700/pionsemj531n/rw/pioneer-se-mj531-casque-audio.jpg"
)

pain_et_viennoiserie = Category.create(
	name: "Pain & Viennoiserie",
	image: "http://www.fournilsdeconstance.net/sites/default/files/gamme_fournils.jpg"
)

produits_de_beaute = Category.create(
	name: "Produits de Beauté",
	image: "http://2.bp.blogspot.com/--IPtjTMvjWk/Ul4f2uR515I/AAAAAAAAEww/QXSOgC4J7N4/s1600/maquillage_soins_beaute.jpg"
)

surgeles = Category.create(
	name: "Surgelés",
	image: "http://www.bfmtv.com/i/580/290/441456.jpg"
	)

vins_et_spiritueux= Category.create(
	name: "Vins & Spiritueux",
	image: "http://www.ronde-des-vins.com/userfiles/image/spiritueux.jpg"
)

yaourt_et_dessert_frais= Category.create(
	name: "Yaourt & Dessert frais",
	image: "http://sanon-louisarthur.e-monsite.com/medias/images/b95955f3.jpg"
)



# Création de listes

list1 = List.create(
	name: "Ma liste"
	)

list2 =List.create(
	name: "Ma liste 2"
	)


# Création de cartes 

map1 = Map.create(
	nb_categories: 3,
	magasin: "Auchan Villebon",
	image: "https://dl-web.dropbox.com/get/GPS/map1.jpg?_subject_uid=45048156&w=AAAe5anF3-w5XTeLIy66uj0fGcY6jVtV8Tpufug2KNeS-w"
)

map2 = Map.create(
	nb_categories: 4,
	magasin: "Auchan Villebon",
	image: "https://dl-web.dropbox.com/get/GPS/map2.jpg?_subject_uid=45048156&w=AACEjywUCf4NtTguQFg06Ihaeg5jTgZYlWtB38wXPFM6ow"
)

map3 = Map.create(
	nb_categories: 5,
	magasin: "Auchan Villebon",
	image: "https://dl-web.dropbox.com/get/GPS/map3.jpg?_subject_uid=45048156&w=AAAximO_I6OASCnlrPz1oj0iqRIGeIYIqIQOcXYEBYFTQA"
)
