class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
  scope :ordered, -> { order(name: :asc) }
end
