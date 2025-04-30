class AddViewToPost < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :view, :integer, default: 0
  end
end
