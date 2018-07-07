require 'test_helper'

class HoursAndLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hours_and_location = hours_and_locations(:one)
  end

  test "should get index" do
    get hours_and_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_hours_and_location_url
    assert_response :success
  end

  test "should create hours_and_location" do
    assert_difference('HoursAndLocation.count') do
      post hours_and_locations_url, params: { hours_and_location: { content: @hours_and_location.content } }
    end

    assert_redirected_to hours_and_location_url(HoursAndLocation.last)
  end

  test "should show hours_and_location" do
    get hours_and_location_url(@hours_and_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_hours_and_location_url(@hours_and_location)
    assert_response :success
  end

  test "should update hours_and_location" do
    patch hours_and_location_url(@hours_and_location), params: { hours_and_location: { content: @hours_and_location.content } }
    assert_redirected_to hours_and_location_url(@hours_and_location)
  end

  test "should destroy hours_and_location" do
    assert_difference('HoursAndLocation.count', -1) do
      delete hours_and_location_url(@hours_and_location)
    end

    assert_redirected_to hours_and_locations_url
  end
end
