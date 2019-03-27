class VehicleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.vehicle_mailer.new_vehicle_created.subject
  #
  def new_vehicle_created(vehicle, user)
    @vehicle = vehicle
    @user = user
    mail(to: @user.email, subject: 'Your Vehicle was Successfully Created!')
  end
end
