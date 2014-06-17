class ChangeLinksColumnInStudy < ActiveRecord::Migration
  def change
    change_column :studies, :links, :string
  end
  
end
