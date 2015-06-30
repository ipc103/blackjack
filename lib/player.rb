class Player
  attr_accessor :total
  attr_reader :hand

  def initialize
    @hand = []
  end

  def sum_total
    self.total = self.hand.grep(Integer).inject(:+)
    if self.hand.include?("ACE") && (self.total + 11) <= 21
      self.total += 11
    elsif self.hand.include?("ACE") && (self.total + 11) > 21
      self.total += 1
    end
    self.total
  end
end