
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


# THIS IS EXTRA WORK TO BE DEVELOP YET FOR THE THIS APPLICATION!!!!!
=begin
class Person < Mental

  class therapy
      attr_accessor:therapist_name,:clients,:input

  def initialize(therapist_name,clients,input)
      @therapist_name = ["Ruddy"]
      @clients = []
      @input = ''
  end

  def intro

    puts "Hi my name is #{therapist_name} . Believe it or not I can be your therapist. Do you like to give this a try?(y/n)"
    answer = gets.chomp
    while (answer != "n" and answer != "y") do
        puts "Sorry you can only reply with y or n. Please try again!"
        answer = gets.chomp
     end
        answer == 'y' ? true : false # if answer is equal to y it's true else it's false
  end

  def ask_about_personal_information

    puts "-------------------------------------------------"
    puts "what is your name?"
​
    input = gets.chomp
    while 
      input!=''
      clients << input 
      clients.sort
    end
  end

  def ask_about_gender
    puts "-------------------------------------------------"
    puts "what gender? (boy or girl)"

    input = gets.chomp
    while 
      input!=''
      clients << input 
      clients.sort
    end
  end

  def ask_about_age
    puts "-------------------------------------------------"
    puts "How old are you?"

    input = gets.chomp.to_i
    while 
      input!=''
      clients << input 
      clients.sort
    end
  end  

  def motivation

    puts "Hey #{patient_name}there is a way to treat depression and anxiety at any given time: #{depression_time}. You are not alone!, because I am here for you. So, I won't let you fall down. Can I ask you a question?"
    answer = gets.chomp
    while (answer != "n" and answer != "y") do
        puts "Sorry you can only reply with y or n. Please try again!"
        answer = gets.chomp
    end
        answer == 'y' ? true : false # if answer is equal to y it's true else it's false`
    if == 'y' do #continue 

  end

  def for_feedback
    puts "Dear Mrs./Ms.#{patient_name}. Please tell me how did you learn about me: "
    input = gets.chomp
     while 
      input!=''
      clients << input 
      clients.sort
  end

  def ask_questions_about_it
    puts "How long it pass since you have a breakdown?"
    input = gets.chomp.to_i 
    puts "Have you spoken to anyone about this?(y/n)"
    while (answer != "n" and answer != "y") do
        puts "Sorry you can only reply with y or n. Please try again!"
        answer = gets.chomp
     end
        answer == 'y' ? true : false # if answer is equal to y it's true else it's false
  end 

  def ask_for_your_location
    puts "Please tell me about your location, so I could refer you to the best facility soon if you agree"
    input = gets.chomp 
      
   
end
=end