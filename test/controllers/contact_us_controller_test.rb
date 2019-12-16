
  # As the contact us page is only being used to provide a link
  # to the contact form, there is a limited amount of tests that
  # can be carried out.

require 'test_helper'

class ContactUsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @contact_u = contact_us(:one)
  end

  # Runs the test such that the contents of the page is checked to
  # see that they appear as expected to the user

test "should get contact" do
  get contact_us_url
  assert_response :success

  assert_template layout: 'application'

  assert_select 'title', 'Film Reviews'
  assert_select 'h1', 'Contact Us'
  assert_select 'p', 'Complete the following form to get in touch with us.'

end
end
