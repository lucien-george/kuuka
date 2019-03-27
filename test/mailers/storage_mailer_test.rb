require 'test_helper'

class StorageMailerTest < ActionMailer::TestCase
  test "new_storage_created" do
    mail = StorageMailer.new_storage_created
    assert_equal "New storage created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
