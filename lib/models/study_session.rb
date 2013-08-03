class StudySession < ActiveRecord::Base

  attr_accessor :deck, :active, :studied
  attr_reader :deck


  def draw_card(some_cards=1)
    xx = deck.cards.take(some_cards)
  end


  def randomly_draw(amount)
    deck.cards.sample(amount)
  end

end