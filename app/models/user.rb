class User < ActiveRecord::Base
  belongs_to :location, dependent: :destroy
  has_many :rents
  has_many :reports

  accepts_nested_attributes_for :location


end
