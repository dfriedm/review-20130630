require_relative '../../environment'

class CreateDecksStudySessionsTable < ActiveRecord::Migration

  def up
    create_table :decks_study_sessions do |t|
      t.integer :deck_id
      t.integer :study_session_id
    end
    puts 'ran up method'
  end 

  def down
    drop_table :decks_study_sessions
    puts 'ran down method'
  end

end


# CreateDecksStudySessionsTable.migrate(:up)
CreateDecksStudySessionsTable.migrate(ARGV[0])