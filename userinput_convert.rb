
=begin
def convert(x)
return x * 9/5 + 32
end
puts "Tell me fahrenheit "

x = gets.chomp().to_i
puts convert(x)
=end



def convert
puts "tell me celsius"
answer1 = gets.chomp.to_i
print "this is in fahrenheit: "
puts answer1 * 9/5 + 32 
end

convert
