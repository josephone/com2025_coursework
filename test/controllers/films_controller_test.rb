require 'test_helper'

class FilmsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers


  setup do
    @film = films(:one)
    @user = users(:one)
  end

    # Runs the test such that the contents of the page is checked to
    # see that they appear as expected to the user

test "should get film" do
  get films_url
  assert_response :success

  assert_template layout: 'application'

  assert_select 'title', 'Film Reviews'
  assert_select 'h1', 'Films'

end

  # 

  test "should get new" do
    get new_film_url
    assert_response :success
  end

  test "should get index" do
    get films_url
    assert_response :success
  end

    test "should create film" do
      assert_difference('Film.count') do
        post films_url, params: {
          film:{
            Film_title: @film.Film_title, Length: @film.Length, description: @film.description
          }
        }
      end
      assert_redirected_to film_url(Film.last)
    end

    test "should show film" do
   get film_url(@film)
   assert_response :success
 end

 test "should get edit" do
   get edit_film_url(@film)
   assert_response :success
 end

 test "should update film" do
   patch film_url(@film), params: { film: {Film_title: @film.Film_title, Length: @film.Length, description: @film.description} }
   assert_redirected_to film_url(@film)
 end

 test "should destroy film" do
   assert_difference('Film.count', -1) do
     delete film_url(@film)
   end

   assert_redirected_to films_url
 end
end
