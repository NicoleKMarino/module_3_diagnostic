class SearchController < ApplicationController

  def index
    connection = Faraday.new("/api/alt-fuel-stations/v1/nearest.json")
    connection.params["api_key"] = "bpwo4TY78yxGrwDHiAYf1CMmuEYoLofUUN5KcH1066z02xfldG"
    connection.params["zip"] = params[:zip_code]
  end
end
