# require './environment'

class FlashCard < ActiveRecord::Base

  # attr_accessible :word, :definition, :pronunciation
  attr_accessor :word, :definition, :pronunciation
  has_many :decks, through: :decks_study_sessions
  
  def info
    {:word => word, :definition => definition, :pronunciation => pronunciation, :usage => usage}
  end


  # add datestudied to the array of cards
  # container for all cards
  # access all cards

end