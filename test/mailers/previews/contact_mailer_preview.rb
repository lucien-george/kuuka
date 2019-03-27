# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_mailer/send_email_to_contact
  def send_email_to_contact
    ContactMailer.send_email_to_contact
  end

end
