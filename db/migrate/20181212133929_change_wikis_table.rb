class ChangeWikisTable < ActiveRecord::Migration
  def change
    rename_column :wikis, :title, :blend_name
    rename_column :wikis, :body, :notes
  end
end
