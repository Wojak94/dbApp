class User < ActiveRecord::Base
  belongs_to :location
  has_many :rents
end
