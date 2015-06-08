class City < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :trip }
  validates :country, :presence => true

  has_many :sites
  belongs_to :country
  belongs_to :trip
end
