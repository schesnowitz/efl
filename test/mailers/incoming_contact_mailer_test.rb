require 'test_helper'

class IncomingContactMailerTest < ActionMailer::TestCase
  test "name" do
    mail = IncomingContactMailer.name
    assert_equal "Name", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "email" do
    mail = IncomingContactMailer.email
    assert_equal "Email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "message" do
    mail = IncomingContactMailer.message
    assert_equal "Message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
