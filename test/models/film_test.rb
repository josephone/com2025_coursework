require 'test_helper'

# Carries out various tests that will be used to check whether the film
# can be successfully created if the correct values are provided.
# These tests also check that an overall review is not allowed to be created
# if the criteria for a film title, description and length is not met, as well
# as if the fields are empty

class FilmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "film should save" do
    assert Film.new(Film_title: "Titanic", description: "A very emotional film", Length: "219 minutes").save
  end

  test "missing length field" do
      assert_not Film.new(Film_title: "Titanic", description: "A very emotional film").save
  end

  test "missing description field" do
      assert_not Film.new(Film_title: "Titanic", Length: "219 minutes").save
  end

  test "missing title field" do
      assert_not Film.new(description: "A very emotional film", Length: "219 minutes").save
  end


end
