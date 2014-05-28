class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :description
      t.string :address
      t.text :notes
      t.integer :rank
      t.string :language
      t.string :category
      t.boolean :visited

      t.timestamps
    end
  end
end
