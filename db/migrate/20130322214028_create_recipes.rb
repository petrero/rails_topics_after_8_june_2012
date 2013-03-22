class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :user

      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
