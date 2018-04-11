class AddTitleToBiddings < ActiveRecord::Migration[5.1]
  def change
    add_column :biddings, :title, :string
  end
end
