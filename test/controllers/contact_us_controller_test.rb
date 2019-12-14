require 'test_helper'

class ContactUsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @contact_u = contact_us(:one)

  end

test "should get contact" do
  get contact_us_url
  assert_response :success

  assert_template layout: 'application'

  assert_select 'title', 'Film Reviews'
  assert_select 'h1', 'Contact Us'
  assert_select 'p', 'Complete the following form to get in touch with us.'

end
end
