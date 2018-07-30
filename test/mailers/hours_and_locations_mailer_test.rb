require 'test_helper'

class HoursAndLocationsMailerTest < ActionMailer::TestCase
  test "new_hours_and_location" do
    mail = HoursAndLocationsMailer.new_hours_and_location
    assert_equal "New hours and location", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "updated_hours_and_locations" do
    mail = HoursAndLocationsMailer.updated_hours_and_locations
    assert_equal "Updated hours and locations", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
