class Ingredient < ActiveRecord::Base

  has_many :doses
  has_many :cocktails, through: :dose

  validates :name, presence: true, uniqueness: true

end





