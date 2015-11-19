class Blackjack
  attr_accessor :player, :dealer
​
  def initialize
    @player = Player.new
    @dealer = Dealer.new
    play_game
  end
​
  def deck_of_card
    @deck_of_card = (([1,2,3,4,5,6,7,8,9] * 4) + ([10] * 16)).shuffle
  end
​
  def deal_to_player
    player.hand << deck_of_card.pop
  end
​
  def deal_to_dealer
    dealer.hand << deck_of_card.pop
  end
​
  def deal_hands #deals two cards each to player and dealer
    2.times do
      deal_to_player
      deal_to_dealer
    end
    puts "You have #{player.point_total} and the dealer's top card is #{dealer.hand.first}"
  end
​
  def player_turn #requires interaction to determine if player should hit
      while (player.hit?) do
        deal_to_player
​
        if player.bust?
          puts "Sorry you busted with #{player.point_total}. You lose!"
          break
        else
          puts "Okay. Now your hand total is #{player.point_total}."
        end
​
      end
​
      dealer_turn unless player.bust?
  end
​
  def determine_winner
    if !dealer.bust? # checks if the dealer did not bust
      if player.point_total > dealer.point_total then puts "#{player.name}, you win with #{player.point_total}" end
      if player.point_total < dealer.point_total then puts "Sorry #{player.name}, you lose. The dealer beat you by #{dealer.point_total - player.point_total}." end
      if player.point_total == dealer.point_total then puts "It's a draw. Nobody wins!" end
    else
      puts "Dealer bust! #{player.name}, You win!"
    end
  end
​
  def dealer_turn # dealer logic for determining if it should hit
    puts "You stayed at #{player.point_total}, now it's the dealers turn."
    puts "Dealer has a hand total of #{dealer.point_total}."
​
    while (dealer.hit?) do #checks to see if dealer should/continue to hit
      deal_to_dealer
      puts "Dealer draws a #{dealer.hand.last}."
      puts "Dealer now has a hand total of #{dealer.point_total}."
    end
​
    determine_winner
  end
​
  def play_game
    deal_hands
    player_turn
  end
end
​
​
class Player
  attr_reader :name
  attr_accessor :hand
​
  def initialize
    puts "What is your name?"
    @name = gets.chomp
    @hand = []
  end
​
  def point_total
    hand.inject(:+)
  end
​
  def hit? #determines if player decides to hit. returns true or false. makes sure only y or n are allowed as user input
    puts "Do you want to hit?(y/n)"
    answer = gets.chomp
    while (answer != "n" and answer != "y") do
      puts "Sorry you can only reply with y or n. Please try again!"
      answer = gets.chomp
    end
    answer == 'y' ? true : false # if answer is equal to y it's true else it's false
  end
​
  def bust?
    point_total > 21
  end
end
​
​
class Dealer
  attr_accessor :hand
​
  def initialize
    @hand = []
  end
​
  def point_total
    hand.inject(:+)
  end
​
  def hit?
    point_total < 17
  end
​
  def bust?
    point_total > 21
  end
end
​
 Blackjack.new
​