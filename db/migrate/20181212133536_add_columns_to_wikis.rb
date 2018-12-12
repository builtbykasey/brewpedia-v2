class AddColumnsToWikis < ActiveRecord::Migration
  def change
    add_column :wikis, :origin, :string
    add_column :wikis, :variety, :string
    add_column :wikis, :intensifier, :string
    add_column :wikis, :description, :string
  end
end
