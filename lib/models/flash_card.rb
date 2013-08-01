require './environment'

class FlashCard < ActiveRecord::Base
  attr_reader :word, :definition, :pronunciation
  attr_accessor :usage

  # CardPool =


  # def initialize(word, definition, pronunciation=nil)
  #   @definition = definition
  #   @word = word
  #   @pronunciation = pronunciation
  # end

  def info
    {:word => word, :definition => definition, :pronunciation => pronunciation, :usage => usage}
  end


  # add datestudied to the array of cards
  # container for all cards
  # access all cards

  # 


end