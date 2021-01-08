# frozen_string_literal: true

class NasaApi < ApplicationRecord
  def self.get_api_info
    nasa_api = 'https://api.nasa.gov/planetary/apod?api_key=0dGgS5BOx0T1goUV886uLEFQQCIxvaFKfopAmI3w'
    request_to_api = Net::HTTP.get(URI('https://api.nasa.gov/planetary/apod?api_key=0dGgS5BOx0T1goUV886uLEFQQCIxvaFKfopAmI3w'))
    JSON.parse request_to_api
  end
end
