class Game < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :station
end
