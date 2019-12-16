require 'test_helper'

# Carries out various tests that will be used to check whether the user
# can be successfully created if the correct values are provided.
# These tests also check that an account is not allowed to be created
# if the criteria for an email address or password is not met, as well
# as if the fields are empty

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

  test "missing both fields" do
      assert_not User.new().save
  end

end
