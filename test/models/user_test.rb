require 'test_helper'

  # The user tests are created in order to check that a valid
  # user can be created when the parameters are all passed
  # according to the schema

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "user should save" do
      user = User.new(email: "emails@email.com", encrypted_password: "emailaddress", password: 'MMMMMMMMan')
      assert user.save
    end

end
