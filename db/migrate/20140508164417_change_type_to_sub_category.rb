class ChangeTypeToSubCategory < ActiveRecord::Migration
  def change
    remove_column :tasks, :type, :string
    add_column :tasks, :sub_category, :string
  end
end
