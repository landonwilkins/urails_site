class AddAnnouncementSubscribeToUser < ActiveRecord::Migration
  def change
    add_column :users, :announcement_sub, :boolean, default: true
  end
end
