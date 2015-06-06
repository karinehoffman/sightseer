class Destinationsite < ActiveRecord::Base
  validates :site_id, :presence => true, :uniqueness => { :scope => :trip_id }

  belongs_to :trip
  belongs_to :site

  validates :trip, :presence => true
  validates :site, :presence => true
end
