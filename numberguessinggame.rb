def guess_number
  answer = rand(100) #set a random number to the answer variable
  guesses = 5 #number of guesses allowed
  while guesses > 0 do #keeps going until guesses reaches 0
    puts "Guess a number from 0 to 100. You have #{guesses} guesses left."
    guess = gets.chomp.to_i
    if guess == answer
      puts "Nice Guess! The answer is #{answer}. Give yourself a pat on the back."
      break #breaks out of the loop and ends game
    elsif guess > answer
      puts "Nope that's not the number. Go Lower"
      guesses -= 1
    elsif guess < answer
      puts "Nope that's not the number. Go Higher"
      guesses -= 1
    end
     if guesses == 0
      puts "Sorry You've used up all your guesses. The answer was #{answer}."
      break #breaks out of the loop and ends game
     end
  end
end
guess_number