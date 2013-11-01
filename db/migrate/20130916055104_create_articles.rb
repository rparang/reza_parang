class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.text :labels
      t.boolean :is_project
      t.boolean :is_paper

      t.timestamps
    end
  end
end
