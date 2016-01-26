class Bike < ActiveRecord::Base
  belongs_to :station
  has_many :rents
  has_many :repairs

  accepts_nested_attributes_for :rents

  after_destroy :decrement_bike_quantity
  after_create :increment_bike_quantity

  def station_id=(id)
    write_attribute(:station_id, id)
  end


  private

  def increment_bike_quantity
    self.station.increment!(:bike_quantity, 1)
  end

  def decrement_bike_quantity
    self.station.decrement!(:bike_quantity, 1)
  end

end

