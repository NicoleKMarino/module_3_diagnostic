class SearchController < ApplicationController

  def index
    # connection = Faraday.new("https://api.data.gov/nrel")
    # connection.params["api_key"] = "ySKQ5Nl0scz2uT3m3ASrVndOFUgr4YkXBFmi67Zj"
    # connection.params["location"] = params[:q]
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=ySKQ5Nl0scz2uT3m3ASrVndOFUgr4YkXBFmi67Zj&location=80027&limit=10&fuel_type=ELEC,LPG")
    info = parse(response.body)
    @stations = info[:fuel_stations]
  end

end
