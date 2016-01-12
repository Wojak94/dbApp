class Employee < ActiveRecord::Base
  belongs_to :location


  def self.types
    %w(Serviceman Operator)
  end

  scope :operators, -> {where(type:'Operator')}
  scope :servicemen, -> {where(type:'Serviceman')}


end
