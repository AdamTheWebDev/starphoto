class NasaApod < ApplicationRecord
  require 'net/http'
  def get_api_info(set_date)
    		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
    		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
    		Rails.logger.debug("#{JSON.parse request_to_nasa_api}")
    		JSON.parse request_to_nasa_api
  end
end
