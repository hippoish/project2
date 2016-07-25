# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Neighborhood.destroy_all
Carpool.destroy_all

neighborhoods = Neighborhood.create( [{:name => 'Miracle Mile'}, {:name => 'Brentwood'}, {:name => 'Westwood'}] )

carpools = Carpool.create([
  {:name => 'Super Awesome MM Carpool', :neighborhood => Neighborhood.find_by(:name => 'Miracle Mile')},
  {:name => 'Cool Brentwood Carpool', :neighborhood => Neighborhood.find_by(:name => 'Brentwood')},
  {:name => 'Westwood Folk Rock Commuters', :neighborhood => Neighborhood.find_by(:name => 'Westwood')}
  ])
