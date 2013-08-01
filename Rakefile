# require_relative './lib/flash_card_app'

namespace :tests do
  desc "run each test in the flash_card_app/test/ directory"
  task :runall do
    Dir["./test/*.rb"].each do |file|
      system("ruby #{file}")
    end
  end
end



# desc "drop into app-specific console, basically an irb session with app already required"
# task :console do
#   `irb -r my_app`
# end


