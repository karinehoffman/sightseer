class Site < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :city }
  belongs_to :type
  belongs_to :city

  has_many :destinationsites, :dependent => :destroy
  has_many :trips, :through => :destinationsites
end
