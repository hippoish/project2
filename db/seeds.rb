# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Neighborhood.destroy_all
Carpool.destroy_all

neighborhoods = Neighborhood.create(
  [{:name => 'Beverly Grove', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/4/41/BeverlyCenter_from_south.jpg'},
  {:name => 'Beverly Hills', :img_url => 'http://i.huffpost.com/gen/976201/images/o-TAX-RELIEF-SCAM-FTC-facebook.jpg'},
  {:name => 'Beverlywood', :img_url => 'http://danmayrealestate.com/wp-content/uploads/2013/03/beverlywood.jpg'},
  {:name => 'Brentwood', :img_url => 'http://michaelhiatthomes.com/wp-content/uploads/2013/10/Brentwood-sign-1.jpg'},
  {:name => 'Century City', :img_url => 'http://www.dmassociates.com/images/made/images/projects/century-city-center-1_900_450_89.jpg'},
  {:name => 'Cheviot Hills', :img_url => 'http://www.hancockparkproperty.com/wp-content/uploads/2013/07/Cheviot_Hills_800x350.jpg'},
  {:name => 'Culver City', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Culvercity-5044804355_12843d66a2_o.jpg'},
  {:name => 'Marina Del Rey', :img_url => 'http://img1.10bestmedia.com/Images/Photos/264001/Ritz-Carlton-Marina-del-Rey-View_54_990x660.jpg'},
  {:name => 'Downtown', :img_url => 'http://www.layoverguide.com/wp-content/uploads/2010/12/Los-Angeles-downtown.jpg'},
  {:name => 'Eastside', :img_url => 'http://wikitravel.org/upload/shared//thumb/a/a4/Los_Angeles_Eastside_Banner.jpg/1800px-Los_Angeles_Eastside_Banner.jpg'},
  {:name => 'Fairfax District', :img_url => 'https://a1.muscache.com/locations/uploads/photo/image/20540/0_4200_0_2800_one_the-original-farms-market-trolley-clock-tower-daytime-devon0336.jpg'},
  {:name => 'Ladera Heights', :img_url => 'https://southla.files.wordpress.com/2012/02/ladera-heights-sign-002.jpg'},
  {:name => 'Mar Vista', :img_url => 'https://upload.wikimedia.org/wikipedia/en/e/ea/2014.04.05.mark.twain.middle.school.mar.vista.los.angeles.jpg'},
  {:name => 'Mid-City', :img_url => 'http://2.bp.blogspot.com/-CsmP17on2BM/UFy2bOx49EI/AAAAAAAAAmU/BNMTkVvuruA/s1600/lacma.jpg'},
  {:name => 'Pacific Palisades', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/d/dc/Pacific_Palisades_Photo_D_Ramey_Logan.jpg'},
  {:name => 'Palms', :img_url => 'https://s3.amazonaws.com/citybuzz/2015/12/safest-neighborhoods-in-los-angeles-for-families/safest-neighborhoods-in-los-angeles-for-families-3.jpg'},
  {:name => 'Pico-Robertson', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/5/53/Chabad_Bais_Sonia_Gutte_Campus,_Pico_Blvd.,_Beverlywood,_Los_Angeles.JPG'},
  {:name => 'Rancho Park', :img_url => 'http://golf.lacity.org/images/2014/10/rancho_p3_IMG_5982-Edit_sm.jpg'},
  {:name => 'San Fernando Valley', :img_url => 'http://cache3.asset-cache.net/xd/660-3.jpg?v=1&c=IWSAsset&k=2&d=2DF30557A92EF68A9FA171FB609AFB1F6ADD405C56CDAC573CA3F18B5A5D9E01E30A760B0D811297'},
  {:name => 'San Gabriel Valley', :img_url => 'http://www.heliphoto.net/i/Urban_Sprawl_San_Gabriel_Valley.jpg'},
  {:name => 'Santa Monica', :img_url => 'https://images.unsplash.com/photo-1414912925664-0c502cc25dde?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=17e2353600ad23ec404383cf57344a0d'},
  {:name => 'South Bay', :img_url => 'https://southla.files.wordpress.com/2012/11/south-bay1.jpg'},
  {:name => 'South LA', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/1/10/Interstate_Five_South_(Los_Angeles,_California)-2.jpg'},
  {:name => 'Venice', :img_url => 'https://hd.unsplash.com/photo-1445251836269-d158eaa028a6'},
  {:name => 'Verdugos', :img_url => 'http://www.californiahike.com/photobehr/california_foothills/images/0038099-R2-E005.jpg'},
  {:name => 'Westchester', :img_url => 'https://upload.wikimedia.org/wikipedia/commons/0/00/Lax_sign.jpg'},
  {:name => 'Westwood', :img_url => 'http://a57.foxnews.com/global.fncstatic.com/static/managed/img/Health/0/0/UCLA%20sign%20istock.jpg'}
  ])


carpools = Carpool.create([
  {:name => 'Super Awesome Miracle Mile Carpool', :neighborhood => Neighborhood.find_by(:name => 'Mid-City'), :description => 'We all live near the LACMA and are very punctual in the mornings!'},
  {:name => 'Mid-City Carpool', :neighborhood => Neighborhood.find_by(:name => 'Mid-City'), :description => 'We share breakfast duties throughout the week.'},
  {:name => 'Troup Beverly Hills', :neighborhood => Neighborhood.find_by(:name => 'Beverly Hills'), :description => 'Shelley Long and Jenny Lewis are our most famous alums!'},
  {:name => 'Fairfax District Folk Rock Commuters', :neighborhood => Neighborhood.find_by(:name => 'Fairfax District'), :description => 'We only listen to folk-rock music. Anything electric is not allowed!!!'},
  {:name => 'Bruins Carpool', :neighborhood => Neighborhood.find_by(:name => 'Westwood'), :description => 'No trojans allowed!'}
  ])
