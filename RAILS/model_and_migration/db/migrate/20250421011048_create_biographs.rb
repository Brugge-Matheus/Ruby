class CreateBiographs < ActiveRecord::Migration[7.1]
  def change
    create_table :biographs do |t|
      t.text :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
