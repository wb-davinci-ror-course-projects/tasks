class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :area
      t.string :next_up
      t.text :notes
      t.string :links
      t.string :materials
      t.integer :priority
      t.datetime :last_worked_on

      t.timestamps
    end
  end
end
