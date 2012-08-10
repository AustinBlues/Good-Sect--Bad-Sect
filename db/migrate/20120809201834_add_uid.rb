class AddUid < ActiveRecord::Migration
  def self.up
    add_column 'reports', 'uid', :string
  end

  def self.down
    remove_column 'reports', 'uid'
  end
end
