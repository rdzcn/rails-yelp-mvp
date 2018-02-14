# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

name = %w{blue red fantastico orange superstar moon yellow}
address = %w{berlin rome paris london shanghai beijing bangkok barcelona oslo}
phone_number = %w{12345678 87654321 98734568 918283746 111772289 992748564}
category = %w{chinese japanese belgian italian french}

50.times { Restaurant.create(name: name[rand(0...name.size)], address: address[rand(0...address.size)], phone_number: phone_number[rand(0...phone_number.size)], category: category[rand(0...category.size)]) }