class DropUnusedTables < ActiveRecord::Migration
  def self.up
    drop_table 'microposts'
    drop_table 'relationships'
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
