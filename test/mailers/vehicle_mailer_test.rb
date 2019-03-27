require 'test_helper'

class VehicleMailerTest < ActionMailer::TestCase
  test "new_vehicle_created" do
    mail = VehicleMailer.new_vehicle_created
    assert_equal "New vehicle created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
