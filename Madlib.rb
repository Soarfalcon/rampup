def madlib

	puts "Welcome people to my madlib"

	print "enter type of relative: "
	relative = gets.chomp
	print "enter a name: "
	name = gets.chomp
	print "enter an ing verb: "
	verb = gets.chomp
	print "enter an adjective: "
	adjective = gets.chomp
	print "enter a noun: "
	noun = gets.chomp
	
	print "My dear awesome ", relative,"  ", name ," was ", verb," along the road when he/she was attack by a ", adjective, " ", noun, "."

end

=begin
def relative
	
	return " " + relative
end

def name 
	
	return " " + name
end

def verb
	return " " + verb
end

def adjective
 	return " " + adjective
end

def noun 
	
	return " " + noun
end
=end
print madlib()