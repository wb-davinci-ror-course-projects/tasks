class AddCheckWeightColumn < ActiveRecord::Migration
  def up
    add_column :fit_posts, :check_weight, :float
  end
  def down
    remove_column :fit_posts, :check_weight, :float
  end
end
