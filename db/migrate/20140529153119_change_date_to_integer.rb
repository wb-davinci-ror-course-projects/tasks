class ChangeDateToInteger < ActiveRecord::Migration
  def change
     remove_column :timelines, :event_date, :datetime
     add_column :timelines, :event_year, :integer
  end
end
