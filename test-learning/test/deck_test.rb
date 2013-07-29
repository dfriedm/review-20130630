require_relative '../lib/deck'
require 'test/unit'
require 'minitest/pride'

class DeckTest < Test::Unit::TestCase

  def test_creates_a_deck
    assert Deck.new
  end

  def test_decks_know_their_name
    deck_one = Deck.new('Coding Vocab')
    assert_equal deck_one.name, 'Coding Vocab'
  end

  def test_decks_have_cards
    deck_one = Deck.new('Coding Vocab')
    deck_one.cards << {word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}
    assert_equal deck_one.cards, [{word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}]
  end

  def test_cards_can_be_added
    deck_one = Deck.new('Coding Vocab')
    deck_one.add_card = {word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}
    assert_equal deck_one.cards, [{word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}]
  end

  # def add_new_card


end