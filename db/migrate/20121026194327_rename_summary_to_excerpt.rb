class RenameSummaryToExcerpt < ActiveRecord::Migration
  def change
    rename_column :blogposts, :summary, :excerpt
  end
end
