class FixSnackColumns < ActiveRecord::Migration
  def change
    remove_column :fit_posts, :snacks
    add_column :fit_posts, :snacks, :string
    remove_column :fit_posts, :snacks, :integer
    add_column :fit_posts, :snack_cals, :integer
  end
end
