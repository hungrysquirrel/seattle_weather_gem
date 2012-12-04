require 'open-uri'
require 'json'

class SeattleWeather 
  def self.current_temperature
    data = JSON.parse(open("http://openweathermap.org/data/2.1/forecast/city?q=Seattle").read)

    temperature_data = data['list'].first
    the_temp_kelvin = temperature_data['main'].fetch("temp")
    the_temp_fahrenheit = (((the_temp_kelvin - 273) * 1.8 ) + 32).round

    puts "Seattle's current temperature is #{the_temp_fahrenheit} degrees Fahrenheit"
  end
end
