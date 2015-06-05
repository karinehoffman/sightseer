class Destination < ActiveRecord::Base
  validates :trip_id, :presence => true, :uniqueness => true
  validates :country_id, :presence => true, :uniqueness => true

  belongs_to :trip
  belongs_to :country

  validates :trip, :presence => true
  validates :country, :presence => true
end
