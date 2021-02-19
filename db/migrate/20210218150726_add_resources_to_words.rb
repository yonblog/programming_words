class AddResourcesToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :resources, :text
  end
end
