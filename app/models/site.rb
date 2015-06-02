class Site < ActiveRecord::Base
  belongs_to :type
  belongs_to :city
  has_and_belongs_to_many :trips
end
