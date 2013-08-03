# require './environment'

class Deck < ActiveRecord::Base
  
  # attr_accessible :name, 
  attr_accessor :name

  def cards
    @cards ||= []
  end

  has_many :flash_cards

  def add_card(*card)
    cards << card
    cards.flatten!
  end

end
