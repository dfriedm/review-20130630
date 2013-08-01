# make a study session class
# study methods: all, shuffle, ordered, alphabetical, spaced repitition
# spaced repitition gets long medium and short times--- maybe it's own class, marked as known, not known

# flashcard_app.rb -> make the main
# start, exit, settings, build a deck vs test... etc

# require_relative '../../environment'

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

# sessions
# card table
# deck table

# testdeck = Deck.new("My Name is TESTDECK")
# session1 = StudySession.new(testdeck)
# session1.save