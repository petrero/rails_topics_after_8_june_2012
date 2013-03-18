class CreateHaikus < ActiveRecord::Migration
  def change
    create_table :haikus do |t|
      t.string :content
      t.references :user
      t.datetime :published_at

      t.timestamps
    end
    add_index :haikus, :user_id
  end
end
