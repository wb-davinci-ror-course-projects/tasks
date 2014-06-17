class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.date :event_date
      t.string :event
      t.string :who
      t.string :notes

      t.timestamps
    end
  end
end
