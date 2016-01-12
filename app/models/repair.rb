class Repair < ActiveRecord::Base
  belongs_to :serviceman
  belongs_to :bike
end
