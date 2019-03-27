require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "send_email_to_contact" do
    mail = ContactMailer.send_email_to_contact
    assert_equal "Send email to contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
