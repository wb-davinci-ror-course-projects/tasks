class ChangeTimelinesNotesType < ActiveRecord::Migration
  def change
    change_column :timelines, :notes, :text
  end
end
