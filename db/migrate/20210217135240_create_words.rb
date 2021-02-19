class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :language
      t.text :meaning
      t.text :example
      t.timestamps
    end
  end
end
