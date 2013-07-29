class Deck
  attr_accessor :name, :cards

  def initialize(name=nil)
    @name = name
    @cards = []
  end

  # def cards
  #   cards
  # end
  #  {word: 'Ruby', definition: 'A programming language', pronunciation: "sounds like it's spelled", usage: 'Solving complex problems'}

end