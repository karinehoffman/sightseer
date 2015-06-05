class Trip < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :destinations, :dependent => :destroy
  has_many :countries, :through => :destinations

  has_many :destinationcities, :dependent => :destroy
  has_many :cities, :through => :destinationcities

  has_many :destinationsites, :dependent => :destroy
  has_many :sites, :through => :destinationsites

  has_many :tripusers, :dependent => :destroy
  has_many :users, :through => :tripusers
end
