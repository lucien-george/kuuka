class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy
  validates :make, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :owner, inclusion: { in: [true, false] }
  validates :color, presence: true
  validates :inspection_card, presence: true
  validates :diesel, inclusion: { in: [true, false] }
  validates :property_insurance, inclusion: { in: [true, false] }
  validates :insurance, inclusion: { in: [true, false] }
  after_create :send_email_after_create

  private

  def send_email_after_create
    VehicleMailer.new_vehicle_created(self, user).deliver_now
  end
end
