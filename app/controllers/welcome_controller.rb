class WelcomeController < ApplicationController
  def index
    @location = location_params

  end

  private

  def location_params
    params.permit(:zip_code)
  end
end
