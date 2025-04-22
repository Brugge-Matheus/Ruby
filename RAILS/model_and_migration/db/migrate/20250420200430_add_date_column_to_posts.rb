class AddDateColumnToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :date, :datetime, null: true
  end
end
