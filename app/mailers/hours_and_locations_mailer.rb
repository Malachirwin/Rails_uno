class HoursAndLocationsMailer < ApplicationMailer
  def new_hours_and_location(hours_and_location)
    @hours_and_location = hours_and_location
    mail to: "malachi@theirwins.ws", subject: "new hours and location", from: 'irwin@corn.com'
  end
  
  def updated_hours_and_location(hours_and_location)
    @hours_and_location = hours_and_location
    mail to: "malachi@theirwins.ws", subject: "updated hours and location", from: 'irwin@corn.com'
  end
end
