require 'sqlite3'
require 'active_record'
# require_relative './lib/models/deck'
# require_relative './lib/models/flash_card'
# require_relative './lib/models/study_session'



Dir.glob('./lib/*').each do |folder|
  Dir.glob(folder +"/*.rb").each do |file|
    # puts file
    require file
  end
end


ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'flash_card_app.db'
)

 

created deck_study_session model, wired associations, removed model initializations, cleaning for active_record