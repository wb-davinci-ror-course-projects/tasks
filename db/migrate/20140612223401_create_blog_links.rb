class CreateBlogLinks < ActiveRecord::Migration
  def change
    create_table :blog_links do |t|
      t.string :link
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
