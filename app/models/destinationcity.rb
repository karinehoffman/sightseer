class Destinationcity < ActiveRecord::Base
  validates :trip_id, :presence => true, :uniqueness => true
  validates :city_id, :presence => true, :uniqueness => true

  belongs_to :trip
  belongs_to :city

  validates :trip, :presence => true
  validates :city, :presence => true
end
