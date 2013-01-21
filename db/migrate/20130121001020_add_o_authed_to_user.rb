class AddOAuthedToUser < ActiveRecord::Migration
  def change
    add_column :users, :oauthed, :boolean, default: false
  end
end
