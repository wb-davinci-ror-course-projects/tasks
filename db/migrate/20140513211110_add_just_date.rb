class AddJustDate < ActiveRecord::Migration
  def change
    add_column :tasks, :just_date, :date
  end
end
