class AddSnacksAgain < ActiveRecord::Migration
  def change
        add_column :fit_posts, :snacks, :string
  end
end
