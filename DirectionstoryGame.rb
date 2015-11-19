

def direction
puts "You’re a traveler on a long journey. After many miles, you come to a fork in the road.
 To the North is a small village.  To the East is dark cave.
  Which way do you go? North or East?"
answer1 = gets.chomp

if answer1 == "north"
puts "To the North is a small village"

elsif answer1 == "east"
puts "To the East is dark cave"

else 
puts "Are you sure?!"
end

end

direction