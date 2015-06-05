class Country < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :cities
  has_many :sites, :through => :cities , :source => :sites

  has_many :destinations, :dependent => :destroy
  has_many :trips, :through => :destinations
end

