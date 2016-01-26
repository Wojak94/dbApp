class Rent   < ActiveRecord::Base
  belongs_to :user
  belongs_to :return_place, :class_name => 'Station', :foreign_key => 'return_place_id'
  belongs_to :rent_place, :class_name => 'Station', :foreign_key => 'rent_place_id'
  belongs_to :bike

after_create :relocate_bike

  def relocate_bike

      self.rent_place.decrement!(:bike_quantity, 1)
      self.bike.update_attribute(:station_id, self.return_place.id)
      self.return_place.increment!(:bike_quantity, 1)

  end

end
