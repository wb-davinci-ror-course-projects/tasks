class AddUseridToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :done_for_today, :boolean
  end
end
