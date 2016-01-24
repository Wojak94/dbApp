class Station < ActiveRecord::Base
  belongs_to :location
  has_many :bikes, dependent: :destroy
  has_many :rents

  $station_capacity = 10

  #validates :bike_quantity, presence: true, numericality: {:less_than_or_equal_to => $station_capacity}

  def ulica
    location.street
  end

  #after_initialize do
  #  self.bike_quantity = 0
  # end

end
