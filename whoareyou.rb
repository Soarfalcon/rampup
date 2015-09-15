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
  return fullname
 end 

 def whatisyourage
 	print "Your age: "
 	return gets.chomp

 end

 fullname = whoareyou
 age = whatisyourage

 puts response(fullname, age)