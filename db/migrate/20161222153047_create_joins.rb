class CreateJoins < ActiveRecord::Migration
  def change
  	create_table :joins do |t|
    	t.integer :user_id
  		t.integer :game_id
  	end
  end
end
