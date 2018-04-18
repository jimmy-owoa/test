class AddIsosToProveedors < ActiveRecord::Migration[5.1]
  def change
    add_column :proveedors, :iso_9000, :string
    add_column :proveedors, :iso_14000, :string
    add_column :proveedors, :iso_18000, :string
  end
end
