class Tripuser < ActiveRecord::Base
  belongs_to :trip
  belongs_to :user

  validates :trip, :presence => true
  validates :user, :presence => true
end
