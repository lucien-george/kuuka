# Preview all emails at http://localhost:3000/rails/mailers/vehicle_mailer
class VehicleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vehicle_mailer/new_vehicle_created
  def new_vehicle_created
    VehicleMailer.new_vehicle_created(Vehicle.last, User.last)
  end

end
