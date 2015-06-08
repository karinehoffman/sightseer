class Site < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :city }
  validates :city, :presence => true

  belongs_to :type
  belongs_to :city
  belongs_to :trip
end
