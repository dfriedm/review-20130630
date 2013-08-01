# require_relative '../lib/flash_card'
require './environment'

class Deck < ActiveRecord::Base
  # attr_accessor :name, :cards
  # Decks = [] 

  # def initialize(name=nil)
  #   @name = name
  #   @cards = []
  # end

  # def word(attribute)
  #   cards.select{|card| card.key(attribute)}
  # end

  def add_card(*card)
    cards << card
    cards.flatten!
  end

  # shuffle, reset, next

  # card_studied, studied today
  # active, inactive?, plus days

  # set study session repitition- when due next
  # scheduler
  # start thinking about end point and

end
