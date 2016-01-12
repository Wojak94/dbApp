class Bike < ActiveRecord::Base
  belongs_to :station
  has_many :rents
  has_many :repairs
end
