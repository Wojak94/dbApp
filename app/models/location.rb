class Location < ActiveRecord::Base
  has_one :user
  has_one :employee
  has_one :station

  accepts_nested_attributes_for :user
end
