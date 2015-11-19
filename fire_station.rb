require 'httparty'

class FireStation
	def initialize 
		response = HTTParty.get("http://data.cityofnewyork.us/resource/hc8x-tcnd.json?borough=manhattan&facilityname=Marine%201")
		puts "json: #{response.body}"
		puts "ruby:#{JSON.parse(response.body)[0]["facilityaddress"]}"
	end
end 
FireStation.new 