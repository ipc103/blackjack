class Dealer 

  attr_accessor :deck

  def initialize
    self.deck = Deck.new
  end
  def deal_card(player)
   player.hand.push(self.deck.cards.shift)
  end

  def opening_round(player_one, player_two)
    2.times do
      deal_card(player_one)
      deal_card(player_two)
    end
  end

  def player_hit(player)
    while player.sum_total < 16
      self.deal_card(player)
    end
  end

end