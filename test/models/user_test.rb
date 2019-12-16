require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


    test "user should save" do
      assert User.new(email: "emails@email.com", encrypted_password: "emailaddress").save
    end


end
