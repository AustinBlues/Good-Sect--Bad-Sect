class ChangeGoodToTag < ActiveRecord::Migration
  def self.up
    add_column 'reports', 'tag', :string, :default => '', :null => false, :length => 1
    Report.reset_column_information
    Report.find_each do |rec|
      rec.tag = if rec.good
		  'G'
		elsif rec.comment === 'Theft of bicycle'
		  'T'
		else
		  'B'
		end
      rec.save!
    end
  end

  def self.down
    remove_column 'reports', 'tag'
  end
end
