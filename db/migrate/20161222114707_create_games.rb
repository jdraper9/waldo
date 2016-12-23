class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |t|
  		t.time :ends_at
  		t.boolean :active
  		t.string :waldo_description
  		t.string :waldo_key
  		t.integer :waldo_id # user who hosts game as waldo
  		t.integer :station_id
  		t.integer :winner_id # user who wins
  		t.integer :join_id # non-waldo players
  	end
  end
end
