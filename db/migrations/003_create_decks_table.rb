# require_relative '../../environment'

class CreateDecksTable < ActiveRecord::Migration

  def up
    create_table :decks do |t|
      t.string :name
    end
    puts 'ran up method'
  end 

  def down
    drop_table :decks
    puts 'ran down method'
  end

end
