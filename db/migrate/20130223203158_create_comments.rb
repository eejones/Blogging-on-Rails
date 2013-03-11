class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post
      t.references :commenter

      t.timestamps
    end
    add_index :comments, :post_id, :commenter
  end
end
