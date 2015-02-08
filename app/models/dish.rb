class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :cuisine, :presence => true

  belongs_to :cuisine
  has_many :favorites

  def favorite(user)
    Favorite.where(user_id: user.id, dish_id: self.id ).first
  end
end


