require "httparty"

class Mentalhealth

	def initialize 
		#response = HTTParty.get("http://api.facebook.com/restserver.php")
		response = HTTParty.get("http://twitter.com/statuses/")
		puts "ruby:#{JSON.parse(response.body)}"
	end
end

Mentalhealth.new

