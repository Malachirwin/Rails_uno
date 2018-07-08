class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def hours_and_locations
    @hours_and_locations = HoursAndLocation.all
  end
end
