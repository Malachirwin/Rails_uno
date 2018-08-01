class LoginController < ApplicationController
  include HttpAuthConcern
  http_basic_authenticate_with name: 'cars-and-houses', password: 'elephant-refrigerator-dmjnmje'

  def login
    redirect_to :controller => 'hours_and_locations', :action => 'index'
  end
end
