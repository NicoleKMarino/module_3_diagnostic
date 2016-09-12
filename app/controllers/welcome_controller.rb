class WelcomeController < ApplicationController
  def index
    redirect_to search_path 
  end

end
