require 'open-uri'
require 'json'

class SeattleWeather 
  def self.current_temperature
    data = JSON.parse(open("http://openweathermap.org/data/2.1/forecast/city?q=Seattle").read)
  end
end
