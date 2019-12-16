require 'test_helper'

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
