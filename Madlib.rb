def madlib()

	print "Welcome people to my madlib"
	print "My dear", relative, name , " was", verb, " along the road when he/she was attack by a", adjective, noun, "."

end


def relative
	puts " enter type of relative: "
	relative = gets.chomp
	return " " + relative
end

def name 
	print " enter a name: "
	name = gets.chomp
	return " " + name
end

def verb
	print "enter an ing verb: "
	verb = gets.chomp
	return " " + verb
end

def adjective
 	print "enter an adjective: "
	adjective = gets.chomp
	return " " + adjective
end

def noun 
	print "enter a noun: "
	noun = gets.chomp
	return " " + noun
end

print madlib()