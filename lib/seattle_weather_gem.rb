require 'open-uri'
require 'json'

class SeattleWeather 
  def self.current_temperature
    data = JSON.parse(open("http://openweathermap.org/data/2.1/forecast/city?q=Seattle").read)

    temperature_data = data['list'].first
    the_temp = temperature_data['main'].fetch("temp")

    puts "Seattle's current temperature is #{the_temp}"
  end
end
