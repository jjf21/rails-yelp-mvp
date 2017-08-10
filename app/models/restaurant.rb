class Restaurant < ApplicationRecord  
  has_many :reviews, dependent: :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY, allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true
end
