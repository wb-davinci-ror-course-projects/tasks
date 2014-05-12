class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :deadline
      t.boolean :completed
      t.datetime :date_completed
      t.integer :priority
      t.text :notes
      t.string :links
      t.string :category
      t.string :type
      t.string :contact
      t.string :location
      t.string :comm_info
      t.datetime :last_worked_on

      t.timestamps
    end
  end
end
