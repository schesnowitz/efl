require 'test_helper'

class DriverApplicationMailerTest < ActionMailer::TestCase
  test "driver_application" do
    mail = DriverApplicationMailer.driver_application
    assert_equal "Driver application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
