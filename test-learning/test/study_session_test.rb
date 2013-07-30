require_relative '../lib/deck'
require_relative '../lib/flash_card'
require_relative '../lib/study_session'
require 'test/unit'
require 'minitest/pride'

class StudySessionTest < Test::Unit::TestCase
  
  def test_can_make_a_study_session
    deck_one = Deck.new('Coding Vocab')
    assert StudySession.new(deck_one)
  end

  def test_receives_a_deck_on_start
    deck_one = Deck.new('Coding Vocab')
    session = StudySession.new(deck_one)
    assert_equal deck_one, session.deck
  end

  def test_session_can_draw_a_card
    deck_one = Deck.new('Coding Vocab')
    card_one = FlashCard.new('Ruby', 'A programming language')
    deck_one.add_card(card_one)
    session = StudySession.new(deck_one)
    assert_equal session.draw_card, card_one
  end

  def test_cards_remain_in_deck_after_drawing_a_card
    deck_one = Deck.new('Coding Vocab')
    card_one = FlashCard.new('Ruby', 'A programming language')
    deck_one.add_card(card_one)
    session = StudySession.new(deck_one)
    session.draw_card
    assert_equal [card_one], deck_one.cards
  end

  def test_session_can_draw_multiple_cards
    deck_one = Deck.new('Coding Vocab')
    card_one = FlashCard.new('Ruby', 'A programming language')
    card_two = FlashCard.new('Ruby', 'A programming language')
    card_three = FlashCard.new('Ruby', 'A programming language')

    session.draw_card(3)
  end

  # def test_session_can_draw_multiple_random
  #   session.draw_random(2)
  #   assert session.draw_random(2)
  #   assert_not_equal
  # end









end


