class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category
      t.string :name
      t.decimal :price, :precision => 2, :scale => 8
      t.date :released_on

      t.timestamps
    end
    add_index :products, :category_id
  end
end
