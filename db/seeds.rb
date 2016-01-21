# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





def make_stations
  5.times do
      #locations
      str = Faker::Address.street_name
      flt = Faker::Address.building_number
      ct = Faker::Address.city
      psc = Faker::Address.postcode
      mn = Faker::Number.decimal(2,2)
      #stations
      bq = Faker::Number.digit

      @location = Location.create!(
          street: str,
          flat_number: flt,
          city: ct,
          postcode: psc,
      )

      @station = Station.create!(
          bike_quantity:  bq,
          location_id: @location.id,
      )
  end
end