class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.boolean :status, null: false, default: true

      t.timestamps
    end
  end
end
