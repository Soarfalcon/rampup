=begin
def print_lyrics1
	song = "99 bottles of beer on the wall, 99 bottles of beer.
			Take one down and pass it around, 98 bottles of beer on the wall." 
	
			while song == "#{99} bottles of beer on the wall,#{99} bottles of beer.
				Take one down and pass it around,#{98} bottles of beer on the wall."
				puts song
				song -= {1} 
				
				end
			if song == {0} 
			puts "the end"
			break
			end
end
=end

def print_lyrics

	bottles = 99 
	while bottles > 0 do 

		if bottles > 1 
			puts	"#{bottles} bottles of beer on the wall,#{bottles} bottles of beer.
				Take one down and pass it around,#{bottles -1} bottles of beer on the wall."

		elsif bottles == 1
			puts	"#{bottles} bottle of beer on the wall,#{bottles} bottle of beer.
					Take one down and pass it around, no more bottles of beer on the wall."
					 
			puts 	"No more bottles of beer on the wall, no more bottles of beer. 
					Go to the store and buy some more, 99 bottles of beer on the wall"		

		end

		
		bottles -= 1

		
	end 

end

print_lyrics