class Tripuser < ActiveRecord::Base
  validates :user_id, :presence => true, :uniqueness => { :scope => :trip_id }

  belongs_to :trip
  belongs_to :user

  validates :trip, :presence => true
  validates :user, :presence => true
end
