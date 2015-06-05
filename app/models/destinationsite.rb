class Destinationsite < ActiveRecord::Base
  validates :trip_id, :presence => true, :uniqueness => true
  validates :site_id, :presence => true, :uniqueness => { :scope => :city }

  belongs_to :trip
  belongs_to :site

  validates :trip, :presence => true
  validates :site, :presence => true
end
