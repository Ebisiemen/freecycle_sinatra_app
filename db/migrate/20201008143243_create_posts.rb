class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :user_id
      t.datetime :date__available

      t.timestamps null: false
    end
  end
end
