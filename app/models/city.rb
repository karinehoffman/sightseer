class City < ActiveRecord::Base
  has_many :sites
  belongs_to :country
end
