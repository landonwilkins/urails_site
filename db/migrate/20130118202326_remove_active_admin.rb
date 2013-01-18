class RemoveActiveAdmin < ActiveRecord::Migration
  def up
    puts "NON-REVERTABLE MIGRATION"
    drop_table :admin_users
    drop_table :active_admin_comments
  end
end
