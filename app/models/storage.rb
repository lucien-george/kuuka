class Storage < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :size, presence: true, numericality: { only_integer: true }
end
