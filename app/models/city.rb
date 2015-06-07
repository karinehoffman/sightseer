class City < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :trip }

  has_many :sites
  belongs_to :country
  belongs_to :trip
end
