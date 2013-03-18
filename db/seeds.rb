# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

areas = Area.create([{ name: 'skin' }, { name: 'eyes' }, { name: 'lips' }, { name: 'eyebrows' }])
brands = Brand.create([{ name: 'Chanel', website: 'http://chanel.com' }, { name: 'CoverGirl', website: 'http://covergirl.com' }])
categories = Category.create([{ name: 'eyeliner' }, { name: 'lipstick' }, { name: 'foundation' }, { name: 'bronzer' }])

