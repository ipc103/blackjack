class Deck
  attr_accessor :cards

  def initialize
    self.build_cards
  end

  def build_cards
    values = (2..9).to_a
    4.times do 
      values.push(10)
    end
    values.push("ACE")
    self.cards = [values, values, values, values].flatten
  end

  def shuffle
    self.cards.shuffle!
  end
end