class Site < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :city }
  belongs_to :type
  belongs_to :city
 # has_and_belongs_to_many :trips
end
