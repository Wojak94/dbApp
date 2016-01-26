class User < ActiveRecord::Base
  belongs_to :location, dependent: :destroy
  has_many :rents
  has_many :reports

  accepts_nested_attributes_for :location

  def full_name
    return last_name + " " + first_name;
  end


end
