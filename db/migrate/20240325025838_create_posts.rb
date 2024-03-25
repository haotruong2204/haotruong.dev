class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :slug
      t.bigint :category_id
      t.string :cover_image
      t.integer :status, default: 1
      t.integer :view_count, default: 0
      t.integer :readtime
      t.string :seo_title
      t.text :seo_description

      t.timestamps
    end
  end
end
