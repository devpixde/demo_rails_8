require "test_helper"

class SimpleEmailMailerTest < ActionMailer::TestCase
  test "just_send_an_email" do
    mail = SimpleEmailMailer.just_send_an_email
    assert_equal "Just send an email", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
