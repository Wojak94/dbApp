class Location < ActiveRecord::Base
  has_many :users
  has_one :station
end
