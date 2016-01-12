class User < ActiveRecord::Base
  belongs_to :location
  has_many :rents
  has_many :reports
end
