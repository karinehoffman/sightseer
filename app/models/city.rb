class City < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :country }
  has_many :sites
  belongs_to :country
  #has_and_belongs_to_many :trips
end
