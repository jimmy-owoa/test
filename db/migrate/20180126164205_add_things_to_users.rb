class AddThingsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :business, :string
    add_column :users, :region, :string
    add_column :users, :address, :text
    add_column :users, :phone, :string
  end
end
