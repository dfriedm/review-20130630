require './environment'
require 'test/unit'
require 'minitest/pride'

class StudySessionTest < Test::Unit::TestCase
  
  def test_can_make_a_study_session
    deck_one = Deck.new(name: 'Coding Vocab')
    assert StudySession.new(deck_one)
  end

  def test_receives_a_deck_on_start
    deck_one = Deck.new(name: 'Coding Vocab')
    session = StudySession.new(deck_one)
    assert_equal deck_one, session.deck
  end

  def test_session_can_draw_a_card
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    deck_one.add_card(card_one)
    session = StudySession.new(deck_one)
    assert_equal [card_one], session.draw_card
  end

  def test_cards_remain_in_deck_after_drawing_a_card
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    deck_one.add_card(card_one)
    session = StudySession.new(deck_one)
    session.draw_card
    assert_equal [card_one], deck_one.cards
  end

  def test_session_can_draw_multiple_cards
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card_two = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card_three = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    deck_one.add_card(card_one, card_two, card_three)
    session = StudySession.new(deck_one)
    assert_equal [card_one, card_two, card_three], session.draw_card(3)
  end

  def test_session_can_draw_multiple_random
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card_two = FlashCard.new(name: 'other', definition: 'a thing')
    card_three = FlashCard.new(name: 'go', definition: 'another language')
    card_four = FlashCard.new(name: 'C', definition: 'a big ol monster')
    deck_one.add_card(card_one, card_two, card_three, card_four)
    session = StudySession.new(deck_one)
    assert session.randomly_draw(2)
    # assert_not_equal 
  end


# study sessions should be able to initialie with many decks
  # discard in active or inactive, on card or deck










end


