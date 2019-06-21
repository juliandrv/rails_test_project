require 'test_helper'

class LandingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landings_index_url
    assert_response :success
  end

  test "should get about" do
    get landings_about_url
    assert_response :success
  end

  test "should get contact" do
    get landings_contact_url
    assert_response :success
  end

end
