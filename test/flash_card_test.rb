require './environment'
require 'test/unit'
require 'minitest/pride'

class FlashCardTest < Test::Unit::TestCase

  def test_can_initialize
    assert FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
  end

# don't have description tell how to implement, only describes the action
# code is the actual implementation
  def test_flashcard_has_a_word 
    card = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    assert_equal card.word, "Ruby"
  end
  # exepected then actual

  def test_flashcards_word_has_definition 
    card = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    assert_equal card.definition, 'A programming language'
  end

  def test_flashcards_word_has_optional_pronunciation
    card = FlashCard.new(word: 'Ruby', definition: 'A programming language')
    card2 = FlashCard.new(word: 'Python', definition: 'A (lesser?) programming language', pronunciation: "sounds like it's spelled")
    assert card
    assert card2
    assert_equal card.pronunciation, nil
    assert_equal card2.pronunciation, "sounds like it's spelled"
  end  

  def test_flashcards_word_has_example_usage
    card = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card.usage = 'Solving complex problems'
    assert_equal card.usage, 'Solving complex problems'
  end  

  def test_flashcard_card_returns_all_attributes
    card = FlashCard.new(word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled")
    card.usage = 'Solving complex problems'
    assert_equal card.info, {word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}
  end




end