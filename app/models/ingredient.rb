class Ingredient < ApplicationRecord
  has_one_attached :photo
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, uniqueness: true
  validates :name, presence: true
end
