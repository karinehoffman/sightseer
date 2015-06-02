class Trip < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :cities
  has_and_belongs_to_many :sites
end
