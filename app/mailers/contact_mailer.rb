class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_email_to_contact.subject
  #
  def send_email_to_contact(message)
    @message = message
    mail(to: 'contact@kuuka.co.uk', from: @message[:email], subject: "Email from #{@message[:first_name].capitalize} #{@message[:last_name].capitalize}")
  end
end
