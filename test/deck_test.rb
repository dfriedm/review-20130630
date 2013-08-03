require './environment'
require 'test/unit'
require 'minitest/pride'

class DeckTest < Test::Unit::TestCase

  def test_creates_a_deck
    assert Deck.new
  end

  def test_decks_know_their_name
    deck_one = Deck.new(name: 'Coding Vocab')
    assert_equal 'Coding Vocab', deck_one.name
  end

  def test_can_add_cards_to_deck
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language')
    deck_one.add_card(card_one)
    assert_equal [card_one], deck_one.cards
  end

  def test_can_add_multiple_cards_to_deck
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language')
    card_two = FlashCard.new(word: 'Python', definition: 'Different Language')
    deck_one.add_card(card_one, card_two)
    assert_equal [card_one, card_two], deck_one.cards
  end




#   def test_decks_have_cards # too much going on here
#     deck_one = Deck.new('Coding Vocab')
#     deck_one.cards << FlashCard.new('Ruby', 'A programming language')
#     assert_equal deck_one.cards, [{word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}]
#   end

#   def test_can_ask_deck_for_a_card
#     deck_one = Deck.new('Coding Vocab')
#     deck_one.cards << FlashCard.new('Ruby', 'A programming language')
#     assert_equal deck_one.word('Ruby'), [{word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}]
#   end


# # simple first
#   def test_decks_can_be_create_and_add_cards
#     deck_one = Deck.new('Coding Vocab')
#     card_one = FlashCard.new('Ruby', 'A programming language')
#     assert_equal deck_one.add_and_create_card('Ruby', 'A programming language'), FlashCard.new('Ruby', 'A programming language')
#   end

end