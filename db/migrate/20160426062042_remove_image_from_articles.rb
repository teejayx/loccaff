class RemoveImageFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :image, :string
  end
end
