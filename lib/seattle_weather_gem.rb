require 'open-uri'
require 'json'

class SeattleWeather 

    def data_feed
      data = JSON.parse(open("http://openweathermap.org/data/2.1/forecast/city?q=Seattle").read)
      current_weather = data['list'].first
    end

    def kelvin_to_fahrenheit
      kelvin_temp = data_feed['main'].fetch("temp")
      (((kelvin_temp - 273) * 1.8 ) + 32).round
    end

    def seattle_current_temp
      puts "Seattle's current temperature is #{kelvin_to_fahrenheit} degrees Fahrenheit"
    end

end
