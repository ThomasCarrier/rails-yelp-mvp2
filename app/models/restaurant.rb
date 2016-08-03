class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORY, allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

end
