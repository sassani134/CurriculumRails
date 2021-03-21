require "time"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employment.create!(title: 'Develloper IOS', soustitle:'Apple - start up', body:" J'ai été un developpeur chez apple utilisant uniquement le prototype l'ipad pro 11 pouce ", lieux:"Californie", debut:Date.parse("Dec 8 2015"),fin:Date.parse("Dec 8 2021"), wip:false, tache1:"developper une app" , tache2:"tester l'ipad pro 11 2020" ,tache3:nil ,prio:true)
Employment.create!(title: 'Developpeur mobile React native', soustitle:'Ashley - start up', body:" J'ai lancé l'application ashley pendant le concours de l'agitateur", lieux:"Londre - Grenoble", debut:Date.parse("Dec 8 2015"),fin:nil, wip:true, tache1:"developper une app" , tache2:"creation du serveur" ,tache3:"test1" ,prio:true)
Employment.create!(title: 'Bénévolat', soustitle:'Quartier libre', body:"J'ai été un bénévole pour l'association viva cité dans la branche quartier libre en particuliers", lieux:" Grenoble", debut:Date.parse("Dec 8 2015"),fin:nil, wip:nil, tache1:"developper une app" , tache2:"creation du serveur" ,tache3:"test2" ,prio:false)

Certificat.create!(title:'bac',debut:Date.parse("Dec 8 2015"),fin:Date.parse("Dec 8 2015"), wip:false, prio:true )
Certificat.create!(title:'BTS',debut:Date.parse("Dec 8 2015"),fin:Date.parse("Dec 8 2015"), wip:false, prio:true )
Certificat.create!(title:'Licences pro',debut:Date.parse("Dec 8 2015"),fin:Date.parse("Dec 8 2015"), wip:true, prio:true )
Certificat.create!(title:'Brevet des college',debut:Date.parse("Dec 8 2015"),fin:Date.parse("Dec 8 2015"), wip:false, prio:false )

Contact.create!(title:'mails1', body:'sassani134@gmail.com', prio:true)
Contact.create!(title:'téléphone', body:'+33 7 77 77 77 77', prio:true)
Contact.create!(title:'mails2', body:'ayo@gmail.com', prio:false)

Competence.create!(title:'Rails', point:5, prio:true)
Competence.create!(title:'Ruby', point:5, prio:true)
Competence.create!(title:'HTML', point:5, prio:false)
Competence.create!(title:'CSS', point:5, prio:false)
Competence.create!(title:'React Native', point:4, prio:true)

Interet.create!(title:'test0', prio:false)
Interet.create!(title:'test1', prio:true)
Interet.create!(title:'test2', prio:false)
Interet.create!(title:'test3', prio:true)
Interet.create!(title:'test4', prio:false)