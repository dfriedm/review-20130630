class StudySession < ActiveRecord::Base
  # has_many :deck_ids, through: :decks_study_sessions

  attr_accessible :decks, :active, :studied, :name
  attr_accessor :decks

  # def deck=()


  def draw_card(some_cards=1)
    xx = deck.cards.take(some_cards)
  end


  def randomly_draw(amount)
    deck.cards.sample(amount)
  end

end
