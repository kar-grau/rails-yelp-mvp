class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], message: "%{value} is not included in the list" }
  has_many :reviews, dependent: :destroy
  # blongs_to :reviews,
  # validates :ratings, presence: true
  

end
