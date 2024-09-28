require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    email = UserMailer.with(to: "pea98258@gmail.com", name: "pea").welcome
    assert_emails(1){ email.deliver_now }
    assert_equal ["from@example.com"], email.from
    assert_equal ["pea98258@gmail.com"], email.to
    assert_emails "登録完了",email.subject

    assert_includes email.text_part.decoded, "pea"
    assert_includes email.html_part.decoded, "pea"
  end
end
