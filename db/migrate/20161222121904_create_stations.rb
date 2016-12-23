class CreateStations < ActiveRecord::Migration
  def change
  	create_table :stations do |t|
  		t.string :abbr
  		t.string :station_name
  	end
  end
end
