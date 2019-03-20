class Storage < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :size, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :price_per_week, presence: true, numericality: { only_integer: true }
  validates :price_per_month, presence: true, numericality: { only_integer: true }
  validates :price_per_six_month, presence: true, numericality: { only_integer: true }
  validates :location, presence: true
  validates :weight_capacity, presence: true, numericality: { only_integer: true }
  validates :storage_type, presence: true
  validates :insurance, presence: true
  validates :insurance_type, presence: true
  mount_uploaders :photos, PhotoUploader
end
