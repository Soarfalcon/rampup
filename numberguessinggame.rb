

def chooses 
number = rand(100)
crazytable = 0
while (crazytable < 5) or (number!=answer)
puts "User guess a number"
answer = gets.chomp


if  number == answer
puts "you win"

elsif number > answer
puts "you are too low"

else 
puts "you are too high"
end

crazytable += 1

end


end

puts chooses
