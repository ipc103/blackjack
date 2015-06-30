class Blackjack

  attr_accessor :player_one, :player_two, :deck, :dealer
  

  def initialize
    self.player_one = Player.new
    self.player_two = Player.new
    self.dealer = Dealer.new(Deck.new)
    self.play_game
  end

  def check_winner
    if self.player_one.total > 21
      puts "Player Two Wins"
    elsif self.player_two.total > 21
      puts "Player One Wins"
    elsif self.player_one.total > self.player_two.total
      puts "Player One Wins"
    elsif self.player_two.total > self.player_one.total
      puts "Player Two Wins" 
    elsif self.player_two.total == self.player_one.total
      puts "It's a Draw"
    end
    puts "Player One had #{self.player_one.hand} for a total of #{self.player_one.total}. Player Two had #{self.player_two.hand} for a total of #{self.player_two.total}."
  end

  def play_game
    self.dealer.deck.shuffle
    self.dealer.opening_round(self.player_one, self.player_two)
    self.dealer.player_hit(self.player_one)
    self.dealer.player_hit(self.player_two)
    check_winner
  end 
end