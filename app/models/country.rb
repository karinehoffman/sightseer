class Country < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :cities
  has_many :sites, :through => :cities , :source => :sites
  #has_and_belongs_to_many :trips
end

