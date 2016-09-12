class SearchController < ApplicationController

  def index
    connection = Faraday.new("https://api.data.gov/nrel")
    connection.params["api_key"] = "ySKQ5Nl0scz2uT3m3ASrVndOFUgr4YkXBFmi67Zj"
    connection.params["location"] = params[:q]
    response = connection.get "/api/alt-fuel-stations/v1/nearest.json"
    @info = response.body
  end

end
