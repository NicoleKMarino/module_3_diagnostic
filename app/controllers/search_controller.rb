class SearchController < ApplicationController

  def index
    connection = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations")
    connection.params["api_key"] = "bpwo4TY78yxGrwDHiAYf1CMmuEYoLofUUN5KcH1066z02xfldG"
    connection.params["zip"] = params[:q]
    response = connection.get "/v1/nearest.json"
    @info = response.body
  end

end
