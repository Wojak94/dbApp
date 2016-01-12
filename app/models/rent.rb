class Rent < ActiveRecord::Base
  belongs_to :user
  belongs_to :return_place, :class_name => 'Station', :foreign_key => 'return_place'
  belongs_to :rent_place, :class_name => 'Station', :foreign_key => 'rent_place'
  belongs_to :bike
end
