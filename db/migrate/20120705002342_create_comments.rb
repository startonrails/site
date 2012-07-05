class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :description
      t.references :post
      t.boolean :published
      t.boolean :moderated
      t.datetime :published_at
      t.integer :status
      t.timestamps
    end
    add_index :comments, :post_id
    add_index :comments, :name
    add_index :comments, :email
    add_index :comments, :published
    add_index :comments, :moderated
    add_index :comments, :published_at
    add_index :comments, :status

  end
end
