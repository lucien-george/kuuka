class Storage < ApplicationRecord
  belongs_to :user
  accepts_nested_attributes_for :user
  has_many :photos, dependent: :destroy
  validates :unit, inclusion: { in: ['m', 'ft'] }
  validates :height, presence: true, numericality: { only_integer: true }
  validates :width, presence: true, numericality: { only_integer: true }
  validates :depth, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_week, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_month, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_six_month, presence: true, numericality: { only_integer: true }
  validates :location, presence: true
  validates :weight_capacity, presence: true, numericality: { only_integer: true }
  validates :storage_type, presence: true
  validates :insurance_type, presence: true
  after_create :send_email_after_create

  private

  def send_email_after_create
    StorageMailer.new_storage_created(self, user).deliver_now
  end
end
