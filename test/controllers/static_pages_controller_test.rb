require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get hours_and_locations.html.erb" do
    get static_pages_hours_and_locations.html.erb_url
    assert_response :success
  end

end
