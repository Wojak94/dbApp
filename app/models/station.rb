class Station < ActiveRecord::Base
  belongs_to :location, dependent: :destroy
  has_many :bikes, dependent: :destroy
  has_many :rents

  accepts_nested_attributes_for :rents

  $station_capacity = 10

  validates :bike_quantity, presence: true, numericality: {:less_than_or_equal_to => $station_capacity}

  def ulica
    location.street
  end

  after_initialize :set_bike_quantity_0

  def set_bike_quantity_0
    self.bike_quantity ||= 0 if self.new_record?
  end

end
