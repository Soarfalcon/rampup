=begin
class inventor

	@cases =[]

	def initialize
		@user_name = User_Name.new 
		@gender = Gender.new
		@Fee = Fee.new
	say_whoareyou
	
	end 

	def say_whoareyou
	puts "Hi, Do you need help hadling your stuff?y/n"
	answer = gets.chomp.to_

	puts "Nice to meet you #{user_name}. Walk into your own inventory system"
	
	end
end

Inventory.new 
puts say_whoareyou
	
=end

=begin
	class Blackjack
  attr_accessor :player, :dealer
​
  def player_turn #requires interaction to determine if player should hit
      while (player.hit?) do
        deal_to_player
​
        if player.bust?
          puts "Sorry you busted with #{player.point_total}. You lose!"
          break
        else
          puts "Okay. Now your hand total is #{player.point_total}."
        end
​
      end
​
      dealer_turn unless player.bust?
  end
​
  def determine_winner
    if !dealer.bust? # checks if the dealer did not bust
      if player.point_total > dealer.point_total then puts "#{player.name}, you win with #{player.point_total}" end
      if player.point_total < dealer.point_total then puts "Sorry #{player.name}, you lose. The dealer beat you by #{dealer.point_total - player.point_total}." end
      if player.point_total == dealer.point_total then puts "It's a draw. Nobody wins!" end
    else
      puts "Dealer bust! #{player.name}, You win!"
    end
  end
​
  def dealer_turn # dealer logic for determining if it should hit
    puts "You stayed at #{player.point_total}, now it's the dealers turn."
    puts "Dealer has a hand total of #{dealer.point_total}."
​
    while (dealer.hit?) do #checks to see if dealer should/continue to hit
      deal_to_dealer
      puts "Dealer draws a #{dealer.hand.last}."
      puts "Dealer now has a hand total of #{dealer.point_total}."
    end
​
    determine_winner
  end
​
  def play_game
    deal_hands
    player_turn
  end
end
​
​
class Player
  attr_reader :name
  attr_accessor :hand
​
  def initialize
    puts "What is your name?"
    @name = gets.chomp
    @hand = []
  end
​
  def point_total
    hand.inject(:+)
  end
​
  def hit? #determines if player decides to hit. returns true or false. makes sure only y or n are allowed as user input
    puts "Do you want to hit?(y/n)"
    answer = gets.chomp
    while (answer != "n" and answer != "y") do
      puts "Sorry you can only reply with y or n. Please try again!"
      answer = gets.chomp
    end
    answer == 'y' ? true : false # if answer is equal to y it's true else it's false
  end
​
  def bust? 
    point_total > 21
  end
end
​
​
class Dealer
  attr_accessor :hand
​
  def initialize
    @hand = []
  end
​
  def point_total
    hand.inject(:+)
  end
​
  def hit?
    point_total < 17
  end
​
  def bust?
    point_total > 21
  end
end
​
 Blackjack.new
​
=end


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
  times = Time.new  

end
therapist = Therapist_name.new

therapist



class Patient
  attr_accessor:patient_name, :patient_age
	def initialize(name,age)
		@patient_name = patient_name
		@patient_age = patient_age
  end


end 

patient1 = Patient.new
patient1.asking
patient1.my_description



class Depression < Patient
  attr_accessor:depression_time,:depression_triggers,:depression_feelings,:depression_causes
  def initialize(time,triggers,feelings,causes) 
    @depression_time = ["day_time","mid_day","night_time"]
    @depression_triggers = ["house","family","car","people","media","coffee","sleep","laundry","pet","job","career"]
    @depression_feelings = ["sad","angry","fatigue","guilt","hopeless","pessimism","anxious","frustrated"] 
    @depression_causes = ["biological","Psychological","Social","Evolutionary","Drug_and_alcohol_abuse"]
  end 

  def getPinfo
    puts
    get
  end
end

class Mainprogram
  def startprogram
    depression = Depression.new
    depression.getPinfo


    # search twitter for depresion
    # get response
  end 
end

mainprogram = new Mainprogram
mainprogram.startprogram

#puts "Hi I am #{first_name last_name}"
#box1_ITEMS = [tables,chairs,paintings,crafts]
#box1_ITEMS.each { |x| puts "Asset list: #{x}" }

=end
