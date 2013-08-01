# require './environment'

class DeckStudySession < ActiveRecord::Base
  attr_accessible :deck_id, :flash_card_id

  belongs_to :deck
  belongs_to :study_session
end