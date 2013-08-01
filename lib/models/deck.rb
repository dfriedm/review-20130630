# require './environment'

class Deck < ActiveRecord::Base
  
  attr_accessible :name, :cards
  has_many :flash_cards


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
