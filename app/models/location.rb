class Location < ActiveRecord::Base
  has_many :users
  has_many :employees
  has_one :station
end
