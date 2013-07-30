# make a study session class
# study methods: all, shuffle, ordered, alphabetical, spaced repitition
# spaced repitition gets long medium and short times--- maybe it's own class
# mark as known, not known
#

# flashcard_app.rb -> make the main
# start, exit, settings, build a deck vs test... etc

class StudySession

  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def draw_card()
    card = deck.cards.pop
    deck.cards.unshift(card)
    card
  end



end



