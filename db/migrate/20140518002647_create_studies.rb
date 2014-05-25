class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name
      t.text :next_up
      t.boolean :done_for_today
      t.datetime :deadline
      t.integer :priority
      t.string :category
      t.string :links
      t.string :material
      t.boolean :completed
      t.text :notes

      t.timestamps
    end
  end
end
