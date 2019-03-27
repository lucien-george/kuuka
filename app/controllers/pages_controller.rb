class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :how_it_works, :contact, :send_email]

  def home
  end

  def how_it_works
  end

  def contact
  end

  def send_email
    message = params[:send_email]
    ContactMailer.send_email_to_contact(message).deliver_now
    redirect_to storages_path
  end
end
