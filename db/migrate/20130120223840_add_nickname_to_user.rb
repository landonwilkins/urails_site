class AddNicknameToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :nickname
      t.string :github_url
      t.string :homepage
      t.string :realname
    end
  end
end
