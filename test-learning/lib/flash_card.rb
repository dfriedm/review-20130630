class FlashCard
  attr_reader :word, :definition, :pronunciation
  attr_accessor :usage


  def initialize(word, definition, pronunciation)
    @definition = definition
    @word = word
    @pronunciation = pronunciation
  end

  def info
    {:word => word, :definition => definition, :pronunciation => pronunciation, :usage => usage}
  end



end