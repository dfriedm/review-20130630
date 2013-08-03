require_relative '../../environment'

class CreateStudySessionsTable < ActiveRecord::Migration

  def up
    create_table :study_sessions do |t|
      t.string :name
    end
  end

  def down
    drop_table :study_sessions
  end
end

CreateStudySessionsTable.migrate(ARGV[0])