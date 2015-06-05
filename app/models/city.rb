class City < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :country }
  has_many :sites
  belongs_to :country

  has_many :destinationcities, :dependent => :destroy
  has_many :trips, :through => :destinationcities
end
