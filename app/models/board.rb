class Board < ApplicationRecord

  validates :title, presence: true, length: { maximum: 100 }
  validates :why, presence: true, length: { maximum: 20 }
  validates :why2, length: { maximum: 400 }
  validates :url, presence: true
  validates :name, presence: true, length: { maximum: 100 }
end
