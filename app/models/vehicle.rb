class Vehicle < ApplicationRecord
  belongs_to :user
  validates :make, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :owner, presence: true
  validates :color, presence: true
  validates :inspection_card, presence: true
  validates :diesel, presence: true
  validates :property_insurance, presence: true
  validates :insurance, presence: true
end
