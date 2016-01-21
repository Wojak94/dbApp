namespace :db do
  task :make_stations => :environment do

      5.times do
        #locations
        str = Faker::Address.street_name
        flt = Faker::Address.building_number
        ct = Faker::Address.city
        psc = Faker::Address.postcode
        #stations
        bq = Faker::Number.between(0,0)

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
end