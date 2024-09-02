class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.references :parent_post, null: true, foreign_key: { to_table: :posts }

      t.timestamps
    end
  end
end
