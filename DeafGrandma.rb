=begin

def Grandma_responses 

 puts "Knock Knock!!! Hello is somebody there!"
answer1 = gets.chomp



if answer1 == "Hi Grandma, Have you seen the moon tonight?"
puts "HUH?!, SPEAK UP SONNY!"
elsif answer1 == "HAVE YOU SEEN THE MOON TONIGHT?!"
puts "NO, NOT SINCE 1938!"
else answer1 == "Bye"
puts "Don't go"
end

end
	
=end

def deaf_grandma 
	
	puts "Hi Sonny, How are you today?"
	

	loop do
	shouts = rand(1930..1980)
	answer1 = gets.chomp 
		if answer1 != answer1.upcase
			puts "HUH?!, SPEAK UP SONNY!"

		elsif answer1 == "BYE"
			break

		else 
			puts "NO, NOT SINCE #{shouts}!"
		end

	end
end

deaf_grandma
	
