class AddCalTrackComplete < ActiveRecord::Migration
  def change
    add_column :fit_posts, :cal_track_complete, :boolean
  end
end
