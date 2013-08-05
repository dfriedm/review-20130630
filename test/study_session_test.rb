require './environment'
require 'test/unit'
require 'minitest/pride'

class StudySessionTest < Test::Unit::TestCase

  # debugging
  def test_can_create_a_study_session
    assert StudySession.new
  end
  
  def test_can_assign_attributes_to_a_session
    assert StudySession.new(name: 'my session')
  end

  def test_can_give_a_session_a_deck
    deck_one = Deck.new(name: 'Coding Vocab')
    session_one = StudySession.new(name: 'my session')
    session_one.deck = deck_one
    assert session_one
    assert_equal session_one.deck, deck_one
  end

  def test_receives_a_deck_on_start
    deck_one = Deck.new(name: 'Coding Vocab')
    session = StudySession.new(:deck => deck_one)
    assert_equal session.deck, deck_one
  end

  def test_session_can_draw_a_card
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    deck_one.add_card(card_one)
    session = StudySession.new(:deck => deck_one)
    assert_equal [card_one], session.draw_card
  end

  def test_cards_remain_in_deck_after_drawing_a_card
    deck_one = Deck.new(name: 'Coding Vocab')
    card_one = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    deck_one.add_card(card_one)
    session = StudySession.new(:deck => deck_one)
    session.draw_card
    assert_equal [card_one], deck_one.cards
  end

  def test_session_can_draw_multiple_cards
    deck_one = Deck.create(name: 'Coding Vocab')
    card_one = FlashCard.create({word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled"})
    card_two = FlashCard.create(word: 'Python', definition: 'A different programming language', pronunciation: "sounds like it's spelled")
    card_three = FlashCard.create(word: 'C#', definition: 'recalcitrant behemoth', pronunciation: "cmon, sound it out.")
    deck_one.add_card(card_one, card_two, card_three)
    session = StudySession.create(:deck => deck_one)
    card_one.save
    card_two.save
    card_three.save
    assert_equal [card_one, card_two, card_three], session.draw_card(3)
    puts card_one.inspect
    puts card_two.inspect
    puts card_three.inspect
    puts 'xxxxxxx'
  end

  def test_session_can_draw_multiple_random
    deck_one = Deck.create(name: 'Coding Vocab')
    card_one = FlashCard.create(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card_two = FlashCard.create(word: 'Python', definition: 'A different programming language', pronunciation: "sounds like it's spelled")
    card_three = FlashCard.create(word: 'C#', definition: 'recalcitrant behemoth', pronunciation: "cmon, sound it out.")
    card_four = FlashCard.create(word: 'Rust', definition: 'a new awesome concurrency thinger')
    deck_one.add_card(card_one, card_two, card_three, card_four)
    session = StudySession.create(:deck => deck_one)
    5.times do |num| 
      puts "Round \##{num}: "; puts session.randomly_draw(2).inspect
    end
    assert session.randomly_draw(2)
  end


# # study sessions should be able to initialie with many decks
#   # discard in active or inactive, on card or deck










end


