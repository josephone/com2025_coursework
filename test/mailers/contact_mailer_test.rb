
require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  # Checks to ensure that an email is being received from the
  # correct email address and is sending to the correct
  # address

  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com", "Matthew Casey", "Hello")
    assert_equal ['messages@filmreviews.com'], mail.from
    assert_equal ['jk00687@surrey.ac.uk'], mail.to
  end
end
