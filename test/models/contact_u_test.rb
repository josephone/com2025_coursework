require 'test_helper'

class ContactUTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "email validation should trigger" do
    assert_not User.new(email: "emailaddress", encrypted_password: "emailaddress").save
  end

  test "missing email field" do
      assert_not User.new(encrypted_password: "emailaddress").save
  end

  test "password too short" do
    assert_not User.new(email: "emails@email.com", encrypted_password: "email").save
  end

  test "missing password field" do
      assert_not User.new(email: "emails@email.com").save
  end

end
