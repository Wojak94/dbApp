class Location < ActiveRecord::Base
  has_one :user
  has_one :employee
  has_one :station

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :station

  def full_name
    self.street + " " + self.flat_number
  end
end
