class Type < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :sites
end
