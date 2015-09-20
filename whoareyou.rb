=begin
def response(fullname,age)

    x = "I am " + fullname + ", and I am " + age + " old" 
	return fullname + " " + age


end

def whoareyou
	print "First Name: "
	firstname = gets.chomp
	print "last Name:  "
	lastname = gets.chomp

	fullname = lastname + ", " + firstname
  
 end 

 def whatisyourage
 	print "Your age: "
 	return gets.chomp

 end

 fullname = whoareyou
 age = whatisyourage

 puts response(fullname, age)
=end


def say_name_and_age

puts "Who are you?"
answer1 = gets.chomp
puts "How old are you?"
answer2 = gets.chomp.to_i
print answer1 + " was born in #{2015 - answer2}"

end

say_name_and_age


=begin
def response

   	#answer1 + answer2 = fullname
   	#2015 - answer3 = age
   	fullname = answer1 + answer2
   	age = 2015 - answer3 
	print "First Name: "
	answer1 = gets.chomp
	print "Last Name:  "
	answer2= gets.chomp
 	print "Your age: "
 	answer3 = gets.chomp
 	puts "I'm #{fullname} and I was born in: #{age}" 
end


response
=end
