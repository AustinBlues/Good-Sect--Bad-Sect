class AddGoodToReports < ActiveRecord::Migration
  def self.up
    add_column :reports, :good, :boolean, :default => false
  end

  def self.down
    remove_column :reports, :good
  end
end
