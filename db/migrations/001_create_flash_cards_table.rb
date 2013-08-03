# require_relative '../../environment'
# Usng AR to create a table
# ActiveRecord::Migration.create_table :flash_cards do |t|
#   t.string :word
#   t.string :definition
#   t.string :pronunciation
#   t.string :usage
#   t.integer :deck_id
# end

# Creating a table via migration
class CreateFlashCardsTable < ActiveRecord::Migration

  def up
    create_table :flash_cards do |t| # create table is an AR method called on the instance of a migration
      t.string :word
      t.string :definition
      t.string :pronunciation
      t.string :usage
      t.integer :deck_id
    end
    puts 'ran up method'
  end 

  def down
    drop_table :flash_cards
    puts 'ran down method'
  end

end

CreateFlashCardsTable.migrate(ARGV[0])