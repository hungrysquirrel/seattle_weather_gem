require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require_relative '../lib/seattle_weather_gem.rb'

describe "SeattleWeatherGem" do
  it "prints #current_temp" do
    seattle_temp = SeattleWeather.new
    seattle_temp.stub(:data_feed).and_return('main' => {'temp' => 280})
    seattle_temp.current_temp.should == "Seattle's current temperature is 45 degrees Fahrenheit"
  end
end
