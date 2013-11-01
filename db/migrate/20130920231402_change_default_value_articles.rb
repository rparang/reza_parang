class ChangeDefaultValueArticles < ActiveRecord::Migration
  def up
    change_column :articles, :is_project, :boolean, :default => false
    change_column :articles, :is_paper, :boolean, :default => false
  end

  def down
  end
end
