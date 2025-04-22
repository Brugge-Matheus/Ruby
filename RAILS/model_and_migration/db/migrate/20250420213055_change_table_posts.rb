class ChangeTablePosts < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :date, :datetime, default: "now()"
  end
end
