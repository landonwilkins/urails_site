class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.datetime :date
      t.text :body
      t.text :summary
      t.boolean :published

      t.timestamps
    end
  end
end
