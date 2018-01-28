class DropRatingsTable < ActiveRecord::Migration[5.0]
  def up
	drop_table :ratings
  end
  
  def down
	raise ActiveRecord::IrreversibleMigratino
  end
end
