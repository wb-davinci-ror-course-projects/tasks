class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :deadline
      t.text :ideas
      t.text :code_higlights
      t.text :temp_notes

      t.timestamps
    end
  end
end
