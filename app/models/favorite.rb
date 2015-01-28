class Favorite < ActiveRecord::Base
  validates :user, :presence => true
  validates :dish, :presence => true
  validates :venue, :presence => true

  belongs_to :user
  belongs_to :dish
  belongs_to :venue
end
