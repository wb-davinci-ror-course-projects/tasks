class ChangeEventDateType < ActiveRecord::Migration
  def change
    change_column :timelines, :event_date, :datetime
  end
end
