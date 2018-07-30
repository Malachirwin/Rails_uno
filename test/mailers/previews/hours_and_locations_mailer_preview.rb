# Preview all emails at http://localhost:3000/rails/mailers/hours_and_locations_mailer
class HoursAndLocationsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/hours_and_locations_mailer/new_hours_and_location
  def new_hours_and_location
    HoursAndLocationsMailer.new_hours_and_location(HoursAndLocation.new(content: "Hello"))
  end

  # Preview this email at http://localhost:3000/rails/mailers/hours_and_locations_mailer/updated_hours_and_locations
  def updated_hours_and_location
    HoursAndLocationsMailer.updated_hours_and_locations(HoursAndLocation.new(content: "Hello"))
  end

end
