require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com", "Matthew Casey", "Hello")
    assert_equal ['messages@filmreviews.com'], mail.from
    assert_equal ['jk00687@surrey.ac.uk'], mail.to
  end
end
