class Station < ActiveRecord::Base
  belongs_to :location
  has_many :bikes, dependent: :destroy
  has_many :rents

  $station_capacity = 10

end
