# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




2.times do |n|
  name  = Faker::Name.first_name
  surname = Faker::Name.last_name
  emailx = Faker::Internet.email
  pass = Faker::Internet.password
  str = Faker::Address.street_name

  @location = Location.create!(
      street: str,


  )

  @usr = User.create!(
      first_name:  name,
      last_name: surname,
      email: emailx,
      password: pass,
      location_id: @location.id,
  )




end
