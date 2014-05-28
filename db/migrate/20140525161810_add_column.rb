class AddColumn < ActiveRecord::Migration
  def change
    add_column :fit_posts, :user_id, :integer
  end
end
