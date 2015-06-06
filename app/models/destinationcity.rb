class Destinationcity < ActiveRecord::Base
  validates :country_id, :presence => true, :uniqueness => { :scope => :trip_id }
  validates :trip, :presence => true
  validates :country, :presence => true

  belongs_to :trip
  belongs_to :city
end
