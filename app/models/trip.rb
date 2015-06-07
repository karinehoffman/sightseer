class Trip < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :destinations, :dependent => :destroy
  has_many :countries, :through => :destinations
  has_many :cities
  has_many :sites
  has_many :tripusers, :dependent => :destroy
  has_many :users, :through => :tripusers
end
