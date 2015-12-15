
require 'httparty'


class Mental
   
  def getHelp (getborough)
  	puts getborough

	puts ""
    puts "Locations in your are of: " + getborough

    response = HTTParty.get("http://data.cityofnewyork.us/resource/ymhw-9cz9.json")
    i = 0
    borough = "#{JSON.parse(response.body)[0]["borough"]}"
    if borough != ""
        while borough != "" do
            if borough == getborough
                borough = "#{JSON.parse(response.body)[i]["borough"]}"
                phone = "#{JSON.parse(response.body)[i]["phone"]}"
                cross_streets = "#{JSON.parse(response.body)[i]["cross_streets"]}"
                facility_name = "#{JSON.parse(response.body)[i]["facility_name"]}"
                facility_type = "#{JSON.parse(response.body)[i]["facility_type"]}"
                location = "#{JSON.parse(response.body)[i]["location_1"]}"
                if i == 0 
                	puts ""
                	puts "Locations in your are:"
                end  

                puts borough +  " > " + facility_name + " > " + phone

                borough = ""
            end
            borough = "#{JSON.parse(response.body)[i]["borough"]}"
           
            i += 1
        end
    end
  end
end


class Person < Mental
	attr_accessor:therapist_name,:clients

	def initialize(therapist_name, clients)
      @therapist_name = ["Ruddy"]
      @clients = []
  	end

	def personinfo
	    client = []

        puts "Enter your full name, so we can add you to our private database. Your name will be absolutly private. You don't have nothing to be worry about. Fullname: "
        fullname = gets.chomp
        # chek if valid
        puts "Provide us phone number, so we can start to search for help for you. Phone: "
        phone = gets.chomp
 		# chek if valid
        puts "Thank you so much. You are doing the right thing. Just there is 1 more step. In which borough are you located at this moment. Depending of where are you located we would will you a reference. Borough:  "
        borough = gets.chomp
         # chek if valid

        client = {"fullname" => fullname, "phone" => phone, "borough" => borough}
        clients = {"fullname" => fullname, "client" => client}

	 puts clients.fetch("fullname")
        #get help
        mh = Mental.new
        mh.getHelp(borough)

        
	end

	def getClientinfo(fname)
        puts "GCI"
		@clients.each {|k, v| puts "#{k} is #{v}" }

        puts clients.fetch(fname)

		#put client info


		borough ="Bronx"  # temp code
		mh = Mental.new 
		mh.getHelp(borough)
	end

end

class Mainprogram < Person

puts "Welcome to Mental Health Reference Office"
puts "We can get you help"
puts "How may we help you"
puts "n = Type letter n if you are a new client"
puts "s = Type letter s if you are an existing client to see your account"

# loop until user end program

# n = new clien
 res = gets.chomp
 if res == "n"
   per = Person.new("Ruddy","Sam")
   per.personinfo

  elsif res == "s"

	# s = search old clien list   
   per.getClientinfo("sam")

end
end



Mainprogram.new


