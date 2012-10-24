class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :topic
      t.text :content
      t.boolean :inline_images

      t.timestamps
    end
    add_index :posts, :topic_id
  end
end
