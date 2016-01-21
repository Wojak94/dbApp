class Bike < ActiveRecord::Base
  belongs_to :station
  has_many :rents
  has_many :repairs

  after_destroy :decrement_bike_quantity
  after_create :increment_bike_quantity


  private

  def increment_bike_quantity
    self.station.increment!(:bike_quantity, 1)
  end

  def decrement_bike_quantity
    self.station.decrement!(:bike_quantity, 1)
  end

end

