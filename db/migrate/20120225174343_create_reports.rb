class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :lat
      t.string :lon
      t.string :comment
      t.datetime :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
