class City < ActiveRecord::Base
  has_many :sites
  belongs_to :country
  has_and_belongs_to_many :trips
end
