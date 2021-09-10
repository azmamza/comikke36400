class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.integer :genre_id, null: false
      t.float :rating, null: false
      t.string :title, null: false
      t.text :review, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
