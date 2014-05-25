class CreateFitPosts < ActiveRecord::Migration
  def change
    create_table :fit_posts do |t|
      t.datetime :date
      t.integer :weight
      t.text :focus
      t.string :breakfast
      t.integer :brk_cals
      t.string :lunch
      t.integer :lunch_cals
      t.string :dinner
      t.integer :dinner_cals
      t.string :snacks
      t.integer :snacks
      t.boolean :water_extract_64oz
      t.string :exercise
      t.text :accomplishment
      t.boolean :model_day
      t.boolean :energy
      t.text :notes

      t.timestamps
    end
  end
end
