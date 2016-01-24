namespace :db do
  task :make_users => :environment do

    1000.times do

      #users
      name = Faker::Name.first_name
      surname = Faker::Name.last_name
      em = Faker::Internet.email
      pass = Faker::Internet.password

      #location1
      str = Faker::Address.street_name
      flt = Faker::Address.building_number
      ct = Faker::Address.city
      psc = Faker::Address.postcode
      mn = Faker::Number.decimal(2, 2)


      @location = Location.create!(
          street: str,
          flat_number: flt,
          city: ct,
          postcode: psc,
      )

      @usr = User.create!(
          first_name: name,
          last_name: surname,
          email: em,
          password: pass,
          money_status: mn,
          location_id: @location.id,
      )


    end
  end
end